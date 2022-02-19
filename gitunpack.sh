#!/bin/bash

GITUNPACK_REPOS="/srv/git/"
GITUNPACK_DEST="/var/lib/git/"

rm -r ${GITUNPACK_DEST}
mkdir ${GITUNPACK_DEST}

cd ${GITUNPACK_REPOS} || exit

find  -maxdepth 1 -mindepth 1 | while read -r line;
do
    git clone ${line} ${GITUNPACK_DEST}${line}
done

