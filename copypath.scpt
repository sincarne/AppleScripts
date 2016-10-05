tell application "Finder"
  set currentWindow to window 1
  set windowPath to (POSIX path of (target of windowPath as alias))
  set the clipboard to windowPath
end tell
