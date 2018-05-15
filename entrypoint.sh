#!/bin/sh

echo youtube-dl $RUNOPTS -o '$FORMAT' "$URL"
cd /output
youtube-dl $RUNOPTS -o "$FORMAT" "$URL"
