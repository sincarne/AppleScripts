(*******************************************************
** NAME: Launch iOS Simulator
** DESCRIPTION: Launches the iOS Simulator.
** Requires ios-sim, which can be installed through
** Homebrew.
*******************************************************)

display dialog "Which simulator do you wish to launch?" buttons {"Cancel", "iPad", "iPhone"} default button 3 with icon path to resource "com.apple.iphone-4-black.icns" in bundle "/System/Library/CoreServices/CoreTypes.bundle"
if result = {button returned:"iPhone"} then
	do shell script "/usr/local/bin/ios-sim launch ~/bin/ios-sim-safari-launcher/IOSSimulatorSafariLauncher.app --family iphone"
else if result = {button returned:"iPad"} then
	do shell script "/usr/local/bin/ios-sim launch ~/bin/ios-sim-safari-launcher/IOSSimulatorSafariLauncher.app --family ipad"
end if
