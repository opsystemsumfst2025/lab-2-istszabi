#!/bin/bash
TARGET_DIR="$1"
if [[ -z "$TARGET_DIR" ]]; then
    echo "Error: No directory provided"
    exit 1
fi
find "$TARGET_DIR" -type f -name '*.txt' -exec chmod 644 {} \;
find "$TARGET_DIR" -type f -name '*.sh' -exec chmod 700 {} \;
echo "Audit run on: $(date)" >> audit.log
echo "[$(date +%Y-%m-%d)] Case Closed: Istok Szabolcs" >> evidence/log_1.txt
