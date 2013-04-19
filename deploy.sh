#!/bin/bash

osacompile -o bin/"$1" "$1"
cp bin/"$1" ~/Library/Application\ Support/Quicksilver/Actions
echo | osascript <<EOC
   tell application "Quicksilver" to quit
EOC
open /Applications/Quicksilver.app/
