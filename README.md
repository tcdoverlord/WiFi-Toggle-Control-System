# 🔌 WiFi Toggle Control System

<p align="center">
  <img src="https://img.shields.io/badge/PowerShell-Automation-blue?style=for-the-badge&logo=powershell" />
  <img src="https://img.shields.io/badge/Windows-10%2F11-0078D6?style=for-the-badge&logo=windows" />
  <img src="https://img.shields.io/badge/Network-Utility-green?style=for-the-badge&logo=icloud" />
  <img src="https://img.shields.io/badge/Status-Stable-brightgreen?style=for-the-badge" />
</p>

A lightweight PowerShell utility that safely disables and restores WiFi connectivity while helping prevent common network recovery issues such as DHCP failures, missing gateways, DNS problems, and adapter initialization errors.

---

## 🎬 Demo

<p align="center">
  <img src="wifi-toggle-control-system-demo.gif" alt="WiFi Toggle Control System Demo" />
</p>

---

## 🧠 Overview

Windows networking issues are often solved using aggressive reset methods that can create additional problems.

WiFi Toggle Control System takes a safer approach by performing controlled WiFi adapter operations designed to restore connectivity without modifying the registry, removing adapters, or resetting the entire network stack.

### Common Issues Addressed

* DHCP failure states (169.254.x.x APIPA addresses)
* Missing default gateway assignments
* DNS resolution failures
* Adapter initialization delays
* Virtual adapter conflicts (Hyper-V / VirtualBox)
* WiFi adapter re-binding issues
* Failed reconnect states after sleep or adapter resets

---

## ✨ Features

### 🔌 WiFi Control Engine

* Safe WiFi ON/OFF operations
* Controlled adapter enable/disable handling
* Clean adapter state transitions
* Optional DHCP renewal workflow

### 🌐 Network Recovery Assistance

* Waits for adapter readiness
* Supports proper DHCP negotiation
* Helps avoid APIPA fallback addresses
* Restores network routing after reconnect

### 🛡️ Safe Execution Design

* No registry modifications
* No Winsock resets
* No adapter recreation
* No network stack resets
* No Hyper-V configuration changes

### 📊 Verification & Status Reporting

* Real-time console feedback
* Clear operation status messages
* Connectivity verification checks
* Simple execution flow

---

## 💻 Requirements

* Windows 10 or Windows 11
* PowerShell 5.1 or newer
* Administrator privileges

---

## 📥 Installation

### Clone Repository

```bash
git clone https://github.com/tcdoverlord/WiFi-Toggle-Control-System.git
cd WiFi-Toggle-Control-System
```

### Manual Setup

Create a working directory:

```text
C:\Update Code
```

Place the script inside:

```text
wifi_switch.ps1
```

---

## 🚀 Usage

Open PowerShell as Administrator and navigate to the script directory:

```powershell
cd "C:\Update Code"
```

### Disable WiFi

```powershell
.\wifi_switch.ps1 off
```

#### Typical Use Cases

* Resetting a stuck adapter
* Clearing failed connection states
* Troubleshooting DHCP issues
* Recovering from unstable WiFi behavior
* Testing network recovery procedures

---

### Enable WiFi

```powershell
.\wifi_switch.ps1 on
```

#### Recovery Process

The script will:

1. Enable the WiFi adapter
2. Wait for adapter initialization
3. Renew DHCP configuration
4. Verify connectivity
5. Confirm successful recovery

---

## 🔄 Workflow

```text
START
  ↓
Execute ON/OFF Command
  ↓
Modify Adapter State
  ↓
Wait For Adapter Readiness
  ↓
DHCP Renewal (ON Only)
  ↓
Connectivity Verification
  ↓
END
```

---

## 📁 Project Structure

```text
WiFi-Toggle-Control-System/
│
├── LICENSE
├── README.md
├── wifi-toggle-control-system-demo.gif
└── wifi_switch.ps1
```

---

## 📌 Notes

* Administrator privileges are required.
* Designed specifically for WiFi adapter management.
* Custom adapter names may require minor script adjustments.
* Intended as a safer alternative to full network reset procedures.

---

## ⚠️ Important Information

* Avoid combining with aggressive network reset tools unless troubleshooting.
* VPN software may temporarily affect adapter recovery behavior.
* Only the selected WiFi adapter is modified.
* No permanent system changes are made.

---

## 🎯 Project Goals

This project was created to provide a reliable alternative to networking repair methods that commonly rely on:

* Full network stack resets
* Registry modifications
* Adapter removal and recreation
* Broad system-wide networking changes

### Philosophy

> Restore wireless connectivity safely, predictably, and with the smallest possible impact on the operating system.

---

## 👨‍💻 Author

**TCDOverLord**

GitHub: https://github.com/tcdoverlord

---

## 📄 License

This project is licensed under the MIT License.

See the LICENSE file for details.
