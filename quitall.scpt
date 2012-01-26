(*******************************************************
** NAME: Quit All
** DESCRIPTION: Quit all applications except those listed
** in the "white_list" list
**
** Original script: http://gigaom.com/apple/how-to-quit-all-open-applications-in-os-x/
**
** TODO: add option to quit all, or quit just non-
** white_listed
**
*******************************************************)



tell application "System Events" to set the visible of every process to true

set white_list to {"Finder", "TextExpander", "iTunes", "Transmit", "iTerm", "uTorrent", "Pathfinder"}

try
	tell application "Finder"
		set process_list to the name of every process whose visible is true
	end tell
	repeat with i from 1 to (number of items in process_list)
		set this_process to item i of the process_list
		if this_process is not in white_list then
			tell application this_process
				quit
			end tell
		end if
	end repeat
on error
	tell the current application to display dialog "An error has occurred!" & return & "This script will now quit" buttons {"Quit"} default button 1 with icon 0
end try