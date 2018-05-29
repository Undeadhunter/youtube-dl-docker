#!/bin/sh

chown nobody:users /output

gosu nobody youtube-dl --no-cache-dir $RUNOPTS -o "/output/$FORMAT" "$URL"
