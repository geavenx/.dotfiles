#!/usr/bin/bash

if [[ ! -d $1 ]]; then
    echo "$1 is not a directory"
    exit 0
fi

cd $1

for MDFILE in `find . -depth`
do
    if [[ $(basename "${MDFILE}") == * ]]
    then
            echo Renaming "$MDFILE" to "$( tr '[:upper:]' '[:lower:]' <<<"$MDFILE" )"
            test -f "$MDFILE" && mv "$MDFILE" "$( tr '[:upper:]' '[:lower:]' <<<"$MDFILE" )"
    fi
done

echo "Done!"
