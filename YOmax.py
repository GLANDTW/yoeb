import tkinter as tk
import ctypes
import configparser
import os
import time
import threading
import re
import requests
from datetime import datetime

# --- 固定路徑 ---
YOSET_PATH = r'C:\yoset.ini'
EB_LOG_PATH = r'C:\yoeb-main\Log\lastrun.log'
CUSTOM_INI_PATH = 'custom.ini'

# --- 價值與縮寫 ---
PRICES = {"Divine Orb": 1.0, "Mirror of Kalandra": 800.0, "Chaos Orb": 0.005, "Orb of Alteration": 0.0001, "Gemcutter's Prism": 0.01}
ALERTS = ["Mirror of Kalandra", "The Apothecary", "Headhunter", "Mageblood", "Original Scripture"]
SHORT_NAMES = {"Divine Orb": "神聖", "Chaos Orb": "混", "Orb of Alteration": "改", "Gemcutter's Prism": "寶"}

class POEMonitor:
    def __init__(self):
        self.vm_id = "未知"
        self.alert_webhook = ""
        self.report_webhook = ""
        self.custom_items = {} 
        self.is_resetting = False
        self.reset_stats()
        self.check_and_generate_ini()
        self.load_configs()

    def reset_stats(self):
        self.stats = {"maps": 0, "value": 0.0, "start_time": time.time(), "last_activity_time": time.time(), "last_drop": "重置成功", "last_drop_time": time.time()}
        self.counts = {}
        self.closed_flag = False

    def check_and_generate_ini(self):
        if not os.path.exists(CUSTOM_INI_PATH):
            config = configparser.ConfigParser()
            config['discord'] = {'alert_webhook': '', 'report_webhook': ''}
            config['custom_stats'] = {'item1': 'Seven Years Bad Luck #七年', 'item2': '', 'item3': ''}
            with open(CUSTOM_INI_PATH, 'w', encoding='utf-8') as f: config.write(f)

    def load_configs(self):
        if os.path.exists(YOSET_PATH):
            cfg = configparser.ConfigParser()
            try:
                cfg.read(YOSET_PATH, encoding='utf-8')
                self.vm_id = cfg.get('set', 'nob', fallback='0')
            except: pass
        if os.path.exists(CUSTOM_INI_PATH):
            cust = configparser.ConfigParser()
            try:
                cust.read(CUSTOM_INI_PATH, encoding='utf-8')
                self.alert_webhook = cust.get('discord', 'alert_webhook', fallback='').strip()
                self.report_webhook = cust.get('discord', 'report_webhook', fallback='').strip()
                for i in range(1, 11):
                    raw = cust.get('custom_stats', f'item{i}', fallback='').strip()
                    if raw:
                        if '#' in raw:
                            eng, chn = raw.split('#', 1)
                            self.custom_items[eng.strip()] = chn.strip()
                        else: self.custom_items[raw] = raw[:4]
            except: pass

    def send_to_discord(self, url, content, is_embed=True):
        if not url or "http" not in url: return
        if is_embed:
            summary = content.get("title", "POE 通知")
            payload = {"content": f"🔔 **{summary}**", "embeds": [content]}
        else: payload = {"content": content}
        threading.Thread(target=lambda: requests.post(url, json=payload, timeout=5)).start()

    def periodic_report(self):
        while True:
            time.sleep(1800)
            if not self.report_webhook: continue
            s = self.stats
            hr = max((time.time() - s["start_time"]) / 3600, 0.01)
            rate = 24 / hr
            msg = f"(VM{self.vm_id}) 時{time.strftime('%H:%M', time.gmtime(time.time()-s['start_time']))} 刷{int(s['maps']*rate)}"
            for k, v in self.counts.items():
                if k in SHORT_NAMES: msg += f" {SHORT_NAMES[k]}{int(v*rate)}"
            for eng, chn in self.custom_items.items():
                count = self.counts.get(eng, 0)
                if count > 0: msg += f" {chn}{int(count*rate)}"
            self.send_to_discord(self.report_webhook, msg, is_embed=False)

    def watchdog_check(self):
        while True:
            # F5 偵測 (0x74)
            if ctypes.windll.user32.GetAsyncKeyState(0x74) & 0x8000:
                self.is_resetting = True; self.reset_stats(); time.sleep(0.5); self.is_resetting = False
            
            inactive = time.time() - self.stats["last_activity_time"]
            if inactive >= 600 and not self.closed_flag:
                os.system("taskkill /F /IM PathOfExile_x64.exe /T >nul 2>&1")
                os.system("taskkill /F /IM PathOfExile.exe /T >nul 2>&1")
                self.closed_flag = True
                if self.alert_webhook:
                    alert = {"title": f"VM-{self.vm_id} ⚠️ 重啟", "color": 15105570, "description": "10分鐘閒置，已執行重置指令。"}
                    self.send_to_discord(self.alert_webhook, alert)
            time.sleep(0.1)

    def parse_line(self, line):
        self.stats["last_activity_time"] = time.time(); self.closed_flag = False
        if "Map reinitialized" in line: self.stats["maps"] += 1; return
        match = re.search(r"Picking item: (.*)", line)
        if match:
            item = match.group(1).strip()
            self.counts[item] = self.counts.get(item, 0) + 1
            self.stats["last_drop"], self.stats["last_drop_time"] = item, time.time()
            if item in PRICES: self.stats["value"] += PRICES[item]
            if any(a in item for a in ALERTS) and self.alert_webhook:
                alert = {"title": f"VM-{self.vm_id} 🚀 大獎", "color": 15548997, "description": f"掉落: **{item}**\n目前總收益: {self.stats['value']:.1f} Div"}
                self.send_to_discord(self.alert_webhook, alert)

    def tail_file(self):
        while True:
            try:
                if os.path.exists(EB_LOG_PATH):
                    with open(EB_LOG_PATH, "r", encoding="utf-8", errors="ignore") as f:
                        f.seek(0, os.SEEK_END)
                        while True:
                            if self.is_resetting: time.sleep(1); continue
                            line = f.readline()
                            if line: self.parse_line(line)
                            else: time.sleep(1) # 增加等待時間，減少 I/O 競爭
                else: time.sleep(5)
            except: time.sleep(2)

class Overlay(tk.Tk):
    def __init__(self, monitor):
        super().__init__()
        self.mon = monitor
        self.overrideredirect(True); self.attributes("-topmost", True); self.config(bg="black")
        sw = self.winfo_screenwidth(); self.geometry(f"{sw}x30+0+0")
        
        # 滑鼠穿透
        hwnd = ctypes.windll.user32.GetParent(self.winfo_id())
        ctypes.windll.user32.SetWindowLongW(hwnd, -20, ctypes.windll.user32.GetWindowLongW(hwnd, -20) | 0x80000 | 0x20)
        
        self.marquee_text = tk.StringVar()
        self.label = tk.Label(self, textvariable=self.marquee_text, font=("Microsoft JhengHei", 10, "bold"), fg="#00FF00", bg="black")
        self.label.place(y=5)
        
        # --- 提速設定 ---
        self.x_pos, self.scroll_speed, self.pixel_per_step = sw, 20, 3
        self.scroll_marquee(); self.update_content()

    def update_content(self):
        s, c = self.mon.stats, self.mon.counts
        hr = max((time.time() - s["start_time"]) / 3600, 0.01); rate = 24 / hr
        if self.mon.is_resetting:
            self.display_data = "!!! F5 數據已重置 !!! " * 3
        else:
            data = [f"[VM-{self.mon.vm_id}] 運行:{time.strftime('%H:%M:%S', time.gmtime(time.time()-s['start_time']))}",
                    f"刷圖:{s['maps']}(日:{int(s['maps']*rate)})", f"預估:{s['value']:.1f}(日:{s['value']*rate:.1f})Div"]
            for eng, chn in [("Divine Orb", "神聖"), ("Chaos Orb", "混"), ("Orb of Alteration", "改")]:
                if c.get(eng, 0) > 0: data.append(f"{chn}:{c.get(eng,0)}(日:{int(c.get(eng,0)*rate)})")
            for eng, chn in self.mon.custom_items.items():
                if c.get(eng, 0) > 0: data.append(f"{chn}:{c.get(eng,0)}(日:{int(c.get(eng,0)*rate)})")
            self.display_data = "   *** ".join(data) + " " * 60
        self.after(1000, self.update_content)

    def scroll_marquee(self):
        self.label.place(x=self.x_pos); self.x_pos -= self.pixel_per_step
        if self.x_pos < -self.label.winfo_width(): self.x_pos = self.winfo_screenwidth()
        self.marquee_text.set(getattr(self, 'display_data', '正在初始化...'))
        self.after(self.scroll_speed, self.scroll_marquee)

if __name__ == "__main__":
    m = POEMonitor()
    threading.Thread(target=m.tail_file, daemon=True).start()
    threading.Thread(target=m.watchdog_check, daemon=True).start()
    threading.Thread(target=m.periodic_report, daemon=True).start()
    Overlay(m).mainloop()