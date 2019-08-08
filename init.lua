-- 设置动画时间
hs.window.animationDuration = 0

-- 左上角移动
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Y", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  f.y = f.y - 10
  win:setFrame(f)
end)

-- 返回桌面
hs.hotkey.bind({"alt", "ctrl"}, "D", function()
    local desktop = hs.window.desktop()
    desktop:focus()
end)

-- 放到屏幕中间
hs.hotkey.bind({"alt", "ctrl"}, "J", function()
  local win = hs.window.focusedWindow()
  win:centerOnScreen()
end)

-- move left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

-- move right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  win:setFrame(f)
end)

-- move down
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y + 10
  win:setFrame(f)
end)

-- move up
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y - 10
  win:setFrame(f)
end)

-- 左侧分屏
hs.hotkey.bind({"alt", "ctrl"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- 右侧分屏
hs.hotkey.bind({"alt", "ctrl"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- 上侧分屏
hs.hotkey.bind({"alt", "ctrl"}, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

-- 下侧分屏
hs.hotkey.bind({"alt", "ctrl"}, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

-- 最大化显示
hs.hotkey.bind({"alt", "ctrl"}, "Return", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  
  if (f.w == max.w and f.h == max.h)
  then
      f.x = max.x + (max.w / 4)
      f.y = max.y + (max.h / 4)
      f.w = max.w / 2
      f.h = max.h / 2
  else
      f.x = max.x
      f.y = max.y
      f.w = max.w
      f.h = max.h
  end
  win:setFrame(f)
end)

-- 全屏显示
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Return", function()
  local win = hs.window.focusedWindow()
  if (win:isFullScreen())
  then
    win:setFullScreen(false)
  else
    win:setFullScreen(true)
  end
end)

-- 最小化
hs.hotkey.bind({"alt", "ctrl"}, "M", function()
  local win = hs.window.focusedWindow()
  win:minimize()
end)


-- 移动到右边屏幕
hs.hotkey.bind({"alt", "cmd"}, "Right", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenEast()
end)

-- 移动到左边屏幕
hs.hotkey.bind({"alt", "cmd"}, "Left", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenWest()
end)

-- 移动到上边屏幕
hs.hotkey.bind({"alt", "cmd"}, "Up", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenNorth()
end)

-- 移动到下边屏幕
hs.hotkey.bind({"alt", "cmd"}, "Down", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenSouth()
end)
hs.hotkey.bind({"alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")


