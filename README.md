# 🔌 WiFi Toggle Control System

<p align="center">
  <img src="https://img.shields.io/badge/PowerShell-Automation-blue?style=for-the-badge&logo=powershell" />
  <img src="https://img.shields.io/badge/Windows-10%2F11-0078D6?style=for-the-badge&logo=windows" />
  <img src="https://img.shields.io/badge/Network-Utility-green?style=for-the-badge&logo=icloud" />
  <img src="https://img.shields.io/badge/Status-Stable-brightgreen?style=for-the-badge" />
</p>

---

## 🧠 Overview

PowerShell-based lightweight network utility designed to safely toggle WiFi ON/OFF while preventing common Windows networking failures such as:

- DHCP failure (169.254.x.x fallback)
- Missing default gateway
- DNS resolution breakdown
- Virtual adapter conflicts (Hyper-V / VirtualBox)
- Broken network re-binding states

This tool provides **safe, controlled WiFi management without system-wide resets**.

---

## 🚀 Features

### 🔌 WiFi Control Engine
➜ Safe WiFi ON/OFF switching  
➜ Clean adapter state handling  
➜ Prevents partial or broken network states  
➜ Controlled IP release and renewal  

---

### 🌐 Network Stability Layer
➜ Waits for adapter readiness before execution  
➜ Ensures proper DHCP negotiation  
➜ Prevents APIPA fallback (169.254.x.x)  
➜ Restores routing automatically on reconnect  

---

### 🧠 Safe Execution Design
➜ No registry modifications  
➜ No system-wide network resets  
➜ No Hyper-V disruption  
➜ No unnecessary adapter bridging changes  
➜ Minimal and controlled operations only  

---

### 📊 Feedback System
➜ Real-time status output in terminal  
➜ Internet connectivity verification test  
➜ Clear ON/OFF confirmation messages  
➜ Simple readable execution flow  

---

## 💻 Requirements

✔ Windows 10 or Windows 11  
✔ PowerShell 5.1 or newer  
✔ Administrator privileges required  

---

## ⚙️ Installation

### 📥 Clone Repository

```bash
git clone https://github.com/tcdoverlord/WiFi-Toggle-Control-System.git
````

---

### 📁 Manual Setup

Create folder:

```
C:\Update Code
```

Place script inside:

```
wifi_switch.ps1
```

---

## ▶️ Usage

Open PowerShell as Administrator:

```powershell
cd "C:\Update Code"
```

---

### 🔌 Turn WiFi OFF

```powershell
.\wifi_switch.ps1 off
```

---

### 🔌 Turn WiFi ON

```powershell
.\wifi_switch.ps1
```

---

## ⚡ One-Line Quick Run (Advanced)

Download directly:

```powershell
irm https://raw.githubusercontent.com/tcdoverlord/WiFi-Toggle-Control-System/main/wifi_switch.ps1 -OutFile wifi_switch.ps1
```

Then run:

```powershell
.\wifi_switch.ps1
```

---

## 🔄 Workflow

START
↓
User executes ON/OFF command
↓
WiFi adapter state changes
↓
System waits for readiness
↓
DHCP renewal executed (ON only)
↓
Internet connectivity test performed
↓
END

---

## 📁 Project Structure

```
WiFi-Toggle-Control-System/
│
├── README.md
└── wifi_switch.ps1
```

---

## ⚠️ Important Notes

❌ Do not use with `netcfg -d` unless troubleshooting
❌ Do not run alongside VPN reset tools
❌ Requires Administrator privileges
❌ Only modifies WiFi adapter (safe scope)

---

## 🧠 Problem Context

This tool was designed after diagnosing real-world Windows networking issues involving:

* DHCP failure states (169.254.x.x)
* Missing default gateway routing
* DNS resolution failures
* Virtual adapter conflicts (Hyper-V / VirtualBox)
* Broken WiFi re-binding behavior

---

## 👨‍💻 Author

**tcdoverlord**
GitHub: [https://github.com/tcdoverlord](https://github.com/tcdoverlord)

---

## ⭐ Purpose

A safe, minimal, and predictable WiFi ON/OFF control utility designed to avoid destructive network resets while maintaining system stability.
