(********************************************************* NAME: Duplicate Finder Window** DESCRIPTION: open a new Finder Window, and set the** location to the current frontmost window**** Original script: http://hints.macworld.com/article.php?story=20130510015954305*********************************************************)tell application "Finder"	try		target of window 1		make new Finder window to result	on error		make new Finder window to home	end tryend tell