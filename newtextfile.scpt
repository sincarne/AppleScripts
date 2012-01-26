(*******************************************************
** NAME: New Text File
** DESCRIPTION: Creates an empty file named "untitled.txt"
** in the current Finder window. Replicates the Windows
** "New File" context menu. Run as service.
*******************************************************)

on run
	tell application "Finder"
		activate
		try
			set this_folder to (the target of the front window) as alias
		on error
			set this_folder to startup disk
		end try
		set the_path to POSIX path of this_folder
		do shell script "/usr/bin/touch " & quoted form of the_path & "untitled.txt"
	end tell
end run