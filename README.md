# MacActions
This project provides Lua script for adding custom actions in Mac OS using hammerspoon. 

## Installation  

- Install hammerspoon using brew 
```
brew install homebrew/cask/hammerspoon
```
- Launch hammerspoon from Mac Applications 
- Clone this project 
- Create a sybmbolic link to init.lua script
```
ln -s $PATH_TO_THIS_PROJECT/init.lua ~/.hammerspoon/init.lua
```
- Reload Config in HammerSpoon. 

## Usage

The init.lua script has support for the following shortcuts. 

    ⌥M          - Maximize window
	⌘⌃⌥M        - Another shortcut to maximize window.
	⌘⌃⌥LEFT     - Move the window to left side of the screen and reduce its size by half of the screen's width.
	⌘⌃⌥RIGHT    - Move the window to right side of the screen and reduce its size by half of the screen's width.
	⌘⌃⌥UP       - Move the window to top side of the screen and reduce its size by half of the screen's height.
	⌘⌃⌥DOWN     - Move the window to bottom side of the screen and reduce its size by half of the screen's height.
	⌥UP         - Reduce the height of the window by 10%.
	⌥DOWN       - Increase the height of the window by 10%. Do nothing if the window is maximum height.
	⌥LEFT       - Reduce the width of the window by 10%.
	⌥RIGHT      - Increase the widtth of the window by 10%. Do nothing if the window is maximum width. 
	⌥N          - Move the window to next screen in multi screen scenario. 
	⌘⌥F         - Launch Finder 
	⌘⌥T         - Launch iTerm  
	⌘⌥I         - Launch IntelliJ
	⌘⌥S         - Launch Sublime Text
	⌘⇧ESCAPE    - Launch Activity Monitor
	⌘⌃⌥R        - Reload HammerSpoon config

