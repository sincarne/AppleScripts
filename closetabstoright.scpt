(*******************************************************
** NAME: Close tabs to the right in Safari
** DESCRIPTION: 
** http://awhite.ca/2014/01/close-tabs-to-the-right-for-safari/
**
*******************************************************)

tell window 1 of application "Safari"
    close (tabs where index > (get index of current tab))
end
