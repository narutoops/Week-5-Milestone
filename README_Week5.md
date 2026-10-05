# Week 5: Windows & Linux Administration

## Scripts
- `admin_report.sh` (Bash, Kali): saves a disk-space report with `df -h`, then compresses `.log` files older than 7 days with `find` + `gzip`.
- `disk_report.ps1` (PowerShell, Windows 11): lists all drives with used and free space and saves them to `disk_report.csv`.

## How to run
Bash:
    chmod +x admin_report.sh
    ./admin_report.sh

PowerShell (as Admin):
    powershell -ExecutionPolicy Bypass -File .\disk_report.ps1

## What I learned and understood
- Linux: users and groups (`useradd`, `groupadd`, `usermod -aG`), permissions (`chown`, `chmod 640`), services (`systemctl`)
- Windows: users and groups (`New-LocalUser`, `New-LocalGroup`), NTFS permissions (`icacls`), services (`Stop-Service`, `Start-Service`)
