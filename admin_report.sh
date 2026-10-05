#!/bin/bash
# Disk-space report + simple log rotation

LOG_DIR="$HOME/lab_logs"
REPORT="$HOME/disk_report_$(date +%F).txt"   # date +%F = YYYY-MM-DD

mkdir -p "$LOG_DIR"                          # -p = no error if it already exists

df -h > "$REPORT"                            # df -h = disk usage, human readable
echo "Report saved to $REPORT"

# Compress .log files older than 7 days
find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \;   # -mtime +7 = older than 7 days, -exec gzip = compress each match
echo "Log rotation done"
