#!/bin/bash

TARGET_DIR="/opt/210225-ptm"

        find "$TARGET_DIR" -type f -name "*.sh" | while read FILE; do
        if [ ! -x "$FILE" ]; then
        chmod +x "$FILE"
        echo "added permission to execute: $FILE"
        else
        echo "already executable: $FILE"
        fi
        done

echo "Done"



