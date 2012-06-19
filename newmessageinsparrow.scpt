(********************************************************************************
** NAME: New message in Sparrow with attachment
** DESCRIPTION: Gets selected files in Finder and starts
** a new message in Sparrow
**
** Original script: http://hints.macworld.com/article.php?story=20120618013653455
**
** NOTE: To use, create a new service in Automator.
** Accepts files, folders, then add below to "Run Applescript"
**
********************************************************************************)

on run {input, parameters}
	tell application "Sparrow"
		activate
		set theMessage to make new outgoing message
		tell theMessage
			repeat with ii in input
				make new mail attachment with properties {filename:ii as alias}
			end repeat
			compose
		end tell
	end tell
end run