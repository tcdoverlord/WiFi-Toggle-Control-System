# 🔌 WiFi Toggle Control System

<p align="center">
  <img src="https://img.shields.io/badge/PowerShell-Automation-blue?style=for-the-badge&logo=powershell" />
  <img src="https://img.shields.io/badge/Windows-10%2F11-0078D6?style=for-the-badge&logo=windows" />
  <img src="https://img.shields.io/badge/Network-Utility-green?style=for-the-badge&logo=icloud" />
  <img src="https://img.shields.io/badge/Status-Stable-brightgreen?style=for-the-badge" />
</p>

---

## 🧠 Overview

**WiFi Toggle Control System** is a lightweight PowerShell utility for Windows that safely enables and disables a WiFi adapter while helping prevent common networking issues that can occur during adapter resets and reconnects.

The utility focuses on controlled adapter management rather than aggressive network repair methods, providing a predictable and reliable way to restore wireless connectivity.

### Common Issues Addressed

* DHCP failure states (169.254.x.x APIPA addresses)
* Missing default gateway assignments
* DNS resolution failures
* Adapter initialization delays
* Virtual adapter conflicts (Hyper-V / VirtualBox)
* WiFi re-binding and reconnection issues

---

## 🚀 Features

### 🔌 WiFi Control Engine

* Safe WiFi ON/OFF switching
* Clean adapter state handling
* Controlled adapter enable/disable operations
* Optional DHCP release and renewal workflow

### 🌐 Network Stability Layer

* Waits for adapter readiness before proceeding
* Supports proper DHCP negotiation
* Helps avoid APIPA fallback addresses
* Restores network routing during reconnect operations

### 🧠 Safe Execution Design

* No registry modifications
* No system-wide network resets
* No adapter bridge manipulation
* No Hyper-V configuration changes
* Minimal-impact network recovery approach

### 📊 Status & Verification

* Real-time terminal feedback
* Clear ON/OFF status reporting
* Connectivity verification checks
* Easy-to-follow execution flow

---

## 💻 Requirements

* Windows 10 or Windows 11
* PowerShell 5.1 or newer
* Administrator privileges

---

## ⚙️ Installation

### 📥 Clone Repository

```bash
git clone https://github.com/tcdoverlord/WiFi-Toggle-Control-System.git
cd WiFi-Toggle-Control-System
```

### 📁 Manual Setup

Create a working directory:

```text
C:\Update Code
```

Copy the script into the directory:

```text
wifi_switch.ps1
```

---

## ▶️ Usage

Open PowerShell as **Administrator** and navigate to the script location:

```powershell
cd "C:\Update Code"
```

### 🔌 Disable WiFi

```powershell
.\wifi_switch.ps1 off
```

#### When to Use

The OFF command intentionally disables the WiFi adapter and releases the current network configuration.

Typical use cases include:

* Resetting a stuck WiFi adapter
* Clearing failed connection states
* Troubleshooting DHCP assignment issues
* Recovering from unstable network behavior
* Testing network recovery procedures

This approach provides a clean starting state without performing destructive network resets.

---

### 🔌 Enable WiFi

```powershell
.\wifi_switch.ps1 on
```

#### What Happens

The ON command safely restores wireless connectivity by:

* Enabling the WiFi adapter
* Waiting for adapter initialization
* Renewing DHCP configuration
* Verifying network connectivity
* Confirming successful recovery

This is the recommended method for restoring connectivity after the adapter has been disabled.

---

## 🔄 Workflow

```text
START
  ↓
Execute ON/OFF Command
  ↓
Change Adapter State
  ↓
Wait for Adapter Readiness
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
├── README.md
└── wifi_switch.ps1
```

---

## 📌 Notes

* Administrator privileges are required.
* The utility is designed for WiFi adapter management only.
* Systems using custom adapter names may require minor script adjustments.
* This tool is intended to provide a safer alternative to full network stack resets.

---

## ⚠️ Important Notes

* Do not use alongside aggressive network reset tools unless troubleshooting.
* Avoid combining with `netcfg -d` unless performing advanced network repairs.
* VPN software may temporarily interfere with adapter recovery behavior.
* Only the targeted WiFi adapter is modified.

---

## 🎯 Design Goals

This project was created to provide a reliable alternative to common Windows networking recovery methods that often involve:

* Full network stack resets
* Unnecessary adapter removal and recreation
* Registry modifications
* Broad system-wide network changes

The goal is simple:

> Restore WiFi connectivity safely, predictably, and with the smallest possible impact on the operating system.

---

## 👨‍💻 Author

**tcdoverlord**

GitHub: https://github.com/tcdoverlord

---

## ⭐ Purpose

A safe, minimal, and predictable WiFi control utility designed to simplify adapter recovery and connectivity restoration while maintaining system stability.
