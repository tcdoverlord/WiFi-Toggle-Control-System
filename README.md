# 🔌 WiFi Toggle Control System

<p align="center">
  <img src="https://img.shields.io/badge/PowerShell-Automation-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Windows-10%2F11-0078D6?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Network-Utility-green?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Status-Stable-brightgreen?style=for-the-badge" />
</p>

---

## 🧠 Overview

PowerShell-based lightweight network utility designed to safely toggle WiFi ON/OFF while preventing common Windows network failures such as:

* DHCP failure (169.254.x.x)
* Missing default gateway
* DNS resolution breakdown
* Virtual adapter / Hyper-V interference
* Broken network re-binding states

---

## 🚀 Features

### 🔌 WiFi Control Engine

➜ Safe WiFi ON/OFF switching
➜ Clean adapter state transitions
➜ Prevents partial network states
➜ Controlled IP release & renewal

---

### 🌐 Network Stability Layer

➜ Waits for adapter readiness before execution
➜ Ensures proper DHCP negotiation
➜ Prevents APIPA fallback (169.254.x.x)
➜ Restores routing on reconnect

---

### 🧠 Smart Execution Logic

➜ No registry modifications
➜ No system-wide network resets
➜ No Hyper-V disruption
➜ Minimal and safe scoped control only

---

### 📊 Feedback System

➜ Real-time terminal status output
➜ Internet connectivity verification
➜ Clear ON/OFF success indicators
➜ Human-readable execution flow

---

## ⚙️ Installation

### 📥 Clone Repository

```bash
git clone https://github.com/tcdoverlord/WiFi-Toggle-Control-System.git
```

---

### 📁 Manual Setup

Create folder:

```
C:\Update Code
```

Place:

```
wifi_switch.ps1
```

inside it.

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
.\wifi_switch.ps1 on
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

## 📦 Release Version

### 🟢 WiFi Toggle Control System v1.0

✔ Stable ON/OFF switching
✔ Safe network handling
✔ No system-wide resets
✔ Minimal and reliable design

---

## ⚠️ Important Notes

❌ Do not combine with `netcfg -d` during normal use
❌ Do not run alongside VPN reset tools
❌ Requires Administrator privileges
❌ Only affects WiFi adapter (safe scope)

---

## 🧠 Problem Context

This tool was designed after diagnosing real-world Windows networking failures involving:

* DHCP failure states (169.254.x.x)
* Missing default gateway routing
* DNS resolution issues
* Virtual adapter conflicts (Hyper-V / VirtualBox)
* Broken WiFi re-binding behavior

---

## 📁 Project Structure

```
WiFi-Toggle-Control-System/
│
├── README.md
└── wifi_switch.ps1
```

---

## 👨‍💻 Author

**tcdoverlord**
GitHub: [https://github.com/tcdoverlord](https://github.com/tcdoverlord)

---

## ⭐ Why This Exists

To provide a safe, predictable, and controlled WiFi toggle system that avoids destructive network resets while maintaining system stability.
