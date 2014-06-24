(*******************************************************
** NAME: Duplicate Finder Tab
** DESCRIPTION: open a new Finder tab, and set the
** location to the previous frontmost tab
**
** Original script: http://superuser.com/questions/666762/how-do-you-duplicate-current-open-finder-view-in-new-tab-mavericks
**
*******************************************************)

tell application "Finder"
	activate
	set tab to target of window 1
end tell

tell application "System Events"
	keystroke "t" using command down
end tell

tell application "Finder"
	set target of window 1 to tab
end tell
