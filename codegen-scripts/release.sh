#!/bin/bash

if [ $# -gt 0 ]
then
RELEASE="$1"
else 
RELEASE="1.0"
fi

echo "$RELEASE"

TMP_OS=`uname | tr "[:upper:]" "[:lower:]"`
if [[ "{$TMP_OS}" == *darwin* ]]; then
    OS="mac";
elif [[ "{$TMP_OS}" == *linux* ]]; then
    OS="linux";
elif [[ "{$TMP_OS}" == *win* ]]; then
    OS="win";
elif [[ "{$TMP_OS}" == *mingw* ]]; then
    OS="win";
else
    echo "Unsupported OS";
    exit 1;
fi

ZIPFILE=OzVm-${OS}-${RELEASE}.zip

cd results
zip -r "$ZIPFILE" *

scp "$ZIPFILE" guillepolito@frs.sourceforge.net:/home/frs/project/ozobjectspaces/vm/${RELEASE}/

cd ..
