tell application "Finder"
	activate
	set iconViewOptions to desktop's window's icon view options
	tell iconViewOptions
		set arrangement to arranged by kind
		set icon size to 48
		set shows item info to true
		set shows icon preview to false
	end tell
	quit
end tell
delay 1
tell application "Finder" to activate
