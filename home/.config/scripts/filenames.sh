#!/usr/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [[ ! -d $1 ]]; then
    echo "$1 is not a directory"
    exit 0
fi

cd $1

for MDFILE in `find . -depth`
do
    if [[ $(basename "${MDFILE}") == "index.md" ]]
    then
        ../summary_renamer.sh `dirname "${MDFILE}"`/`basename "${MDFILE}"`
    fi

    if [[ $(basename "${MDFILE}") == "README.md" ]] || [[ $(basename "${MDFILE}") == "readme.md" ]]
    then
        DST=`dirname "${MDFILE}"`/index.md
        echo renaming "${MDFILE}" to "${DST}"
        mv "${MDFILE}" "${DST}"
    fi

    DST=`dirname "${MDFILE}"`/`basename "${MDFILE}" | tr '[A-Z]' '[a-z]'`
done

