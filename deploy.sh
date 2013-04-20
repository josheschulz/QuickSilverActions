#!/bin/bash

## Compile it
osacompile -o bin/"$1" "$1"

if [ -n $2 ]
   then
   if [ -a $2 ]
      then
         Rez -append $2 -o bin/"$1" 
         SetFile -a C bin/"$1"
      fi
fi

cp bin/"$1" ~/Library/Application\ Support/Quicksilver/Actions
echo | osascript <<EOC
   tell application "Quicksilver" to quit
EOC
## If it's not done exiting it doesn't always restart
sleep 3
open /Applications/Quicksilver.app/
