#!/usr/bin/env bash
if [ -x $1 ]; then
clewn -ga $1 &
fi

 #nb netbeans servers
# split then createvar
wait

osascript -e 'tell app "Terminal"
do script "nohup /Applications/MacVim.app/Contents/MacOS/Vim -g -nb:localhost:3219 &"
end tell'	    
	   
