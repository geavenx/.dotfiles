#!/usr/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <arquivo_markdown>"
    exit 1
fi

FILE="$1"

if [[ ! -f "$FILE" ]]; then
    echo "Error: File '$FILE' not found."
    exit 1
fi

# Find md links and convert them to lowercasee
sed -E 's#\(([^)]*)\)#\(\L\1\)#g' "$FILE" > "${FILE}.tmp" && mv "${FILE}.tmp" "$FILE"

sed -E 's#readme#index#g' "$FILE" > "${FILE}.tmp" && mv "${FILE}.tmp" "$FILE"

echo "Arquivo atualizado: $FILE"
