param([string]$mode)

$adapter = "WiFi"

function Wait-WifiUp {
    do {
        Start-Sleep 2
        $state = (Get-NetAdapter -Name $adapter -ErrorAction SilentlyContinue).Status
    } while ($state -ne "Up")
}

function Wait-WifiDown {
    do {
        Start-Sleep 2
        $state = (Get-NetAdapter -Name $adapter -ErrorAction SilentlyContinue).Status
    } while ($state -ne "Disabled")
}

Write-Host "`nWiFi Toggle Control System" -ForegroundColor Cyan

# ============================================
# OFF MODE
# ============================================
if ($mode -eq "off") {

    Write-Host "Turning WiFi OFF..." -ForegroundColor Yellow

    Disable-NetAdapter -Name $adapter -Confirm:$false

    Start-Sleep 2
    ipconfig /release

    Write-Host "WiFi is OFF" -ForegroundColor Red
}

# ============================================
# ON MODE
# ============================================
elseif ($mode -eq "on") {

    Write-Host "Turning WiFi ON..." -ForegroundColor Yellow

    Enable-NetAdapter -Name $adapter -Confirm:$false

    Wait-WifiUp

    Start-Sleep 2
    ipconfig /renew

    Start-Sleep 3

    Write-Host "`nTesting internet..." -ForegroundColor Cyan
    Test-NetConnection 8.8.8.8
    Test-NetConnection google.com

    Write-Host "WiFi is ON" -ForegroundColor Green
}

# ============================================
# INVALID INPUT
# ============================================
else {
    Write-Host "`nUsage:" -ForegroundColor Cyan
    Write-Host ".\wifi_switch.ps1 on"
    Write-Host ".\wifi_switch.ps1 off"
}
