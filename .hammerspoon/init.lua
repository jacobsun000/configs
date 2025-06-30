hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

hs.hotkey.bind({ "cmd", "shift" }, "W", function() end)

-- Automatically maximize specific applications when they are launched
local autoMaximizeApps = { "Firefox", "WezTerm" }

local function maximizeWindow(win, delay)
	if win then
		hs.timer.doAfter(1, function()
			win:maximize()
		end)
	end
end

hs.hotkey.bind({ "cmd", "shift" }, "M", function()
	hs.notify.new({ title = "Hammerspoon", informativeText = "Example Notification" }):send()
end)

hs.application.watcher
	.new(function(appName, eventType, app)
		if eventType == hs.application.watcher.launched and hs.fnutils.contains(autoMaximizeApps, appName) then
			local win = app:mainWindow()
			maximizeWindow(win, 1)
		end
	end)
	:start()

-- Navigate between windows
local function focusAndCenterCursor(focusFn)
	local win = hs.window.focusedWindow()
	if win then
		focusFn(win)
		win = hs.window.focusedWindow()
		if win then
			local frame = win:frame()
			local center = hs.geometry.rectMidPoint(frame)
			hs.mouse.setAbsolutePosition(center)
		end
	end
end

hs.hotkey.bind({ "cmd" }, "U", function()
	focusAndCenterCursor(function(win)
		return win:focusWindowNorth()
	end)
end)

hs.hotkey.bind({ "cmd" }, "E", function()
	focusAndCenterCursor(function(win)
		return win:focusWindowSouth()
	end)
end)

hs.hotkey.bind({ "cmd" }, "N", function()
	focusAndCenterCursor(function(win)
		return win:focusWindowWest()
	end)
end)

hs.hotkey.bind({ "cmd" }, "I", function()
	focusAndCenterCursor(function(win)
		return win:focusWindowEast()
	end)
end)

-- Move windows between screens
hs.hotkey.bind({ "cmd", "shift" }, "U", function()
	local win = hs.window.focusedWindow()
	if win then
		win:moveOneScreenNorth()
	end
end)
hs.hotkey.bind({ "cmd", "shift" }, "E", function()
	local win = hs.window.focusedWindow()
	if win then
		win:moveOneScreenSouth()
	end
end)
hs.hotkey.bind({ "cmd", "shift" }, "N", function()
	local win = hs.window.focusedWindow()
	if win then
		win:moveOneScreenWest()
	end
end)
hs.hotkey.bind({ "cmd", "shift" }, "I", function()
	local win = hs.window.focusedWindow()
	if win then
		win:moveOneScreenEast()
	end
end)
