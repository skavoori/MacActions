function maximizeWindow()
  local win = hs.window.focusedWindow()
    if win then
       local f = win:frame()
       local screen = win:screen()
       local max = screen:frame()

       f.x = max.x
       f.y = max.y
       f.w = max.w
       f.h = max.h
       win:setFrame(f)
       win:maximize()
       hs.alert.show("Window Maximized")
    end
end

function moveLeftHalf() 
  local win = hs.window.focusedWindow()
  if win then
     local f = win:frame()
     local screen = win:screen()
     local max = screen:frame()

     f.x = max.x
     f.y = max.y
     f.w = max.w / 2
     f.h = max.h
     win:setFrame(f)
  end
end

function moveRightHalf()
  local win = hs.window.focusedWindow()
   if win then
     local f = win:frame()
     local screen = win:screen()
     local max = screen:frame()

     f.x = max.x + (max.w / 2)
     f.y = max.y
     f.w = max.w / 2
     f.h = max.h
     win:setFrame(f)
  end
end

function moveTopHalf()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end

function moveBottomHalf()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + max.h/2
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end

-- This function reduces window from bottom my 10 percent. 
function reduceWindowFromBottomBy10()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.h = f.h - (max.h * 0.1)
  win:setFrame(f)
end

-- This function increases window size from top by 10 percent. 
-- Does nothing when the window occupies entire screen. 
function increaseWindowToBottomBy10()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.h = f.h + (max.h * 0.1)
  win:setFrame(f)
end

function reduceWindowToLeftBy10()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = f.w - (max.w * 0.1)
  win:setFrame(f)
end

function increaseWindowToRightBy10() 
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = f.w + (max.w * 0.1)
  win:setFrame(f)
end

-- Bind Window Actions 
hs.hotkey.bind("alt", "M", maximizeWindow)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", maximizeWindow) 

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", moveLeftHalf)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", moveRightHalf)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", moveTopHalf)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", moveBottomHalf)

hs.hotkey.bind({"alt", "w"}, "Up", reduceWindowFromBottomBy10)

hs.hotkey.bind({"alt", "w"}, "Down", increaseWindowToBottomBy10)

hs.hotkey.bind({"alt", "w"}, "Left", reduceWindowToLeftBy10)

hs.hotkey.bind({"alt", "w"}, "Right", increaseWindowToRightBy10)

-- In multi screen scenario move the window to next screen. 
-- This command wraps the screens. 
hs.hotkey.bind({"alt"}, "N", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen():next()
  win:moveToScreen(screen)
end)


-- Launch actions 
hs.hotkey.bind({"cmd","alt"}, "F", function()
   hs.application.open("Finder")
end)

hs.hotkey.bind({"cmd","alt"}, "T", function()
   hs.application.open("iTerm")  
end)  

hs.hotkey.bind({"cmd","alt"}, "I", function()
   hs.application.open("IntelliJ IDEA CE")
end)

hs.hotkey.bind({"cmd","alt"}, "S", function()
   hs.application.open("Sublime Text")
end)

hs.hotkey.bind({"cmd","shift"}, "Escape", function()
   hs.application.open("Activity Monitor")
end)

-- Reload hammerspoon configuration. 
-- This is useful while editing this file. 
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)

hs.alert.show("Config loaded")
