(*******************************************************
** NAME: Clean by Kind
** DESCRIPTION: Lion now defaults to "Arrange" rather
** than "Clean". Bind this script to a key in the 
** Keyboard preferences pane.
**
*******************************************************)

tell application "Finder"
	clean up first window by kind
end tell