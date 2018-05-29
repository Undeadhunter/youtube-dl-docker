#!/bin/sh

USERID=${PUID:-99}
GROUPID=${PGID:-100}

chown $USERID:$GROUPID /output

gosu $USERID:$GROUPID youtube-dl --no-cache-dir $RUNOPTS -o "/output/$FORMAT" "$URL"
