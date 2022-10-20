local obj = {}
obj.__index = obj

obj.name = "spawn-apps"
obj.version = "1.0"
obj.author = "Saravanan Senthil"
obj.homepage = "https://github.com/saru-d2"
obj.license = ""

obj.mash = {'ctrl', 'cmd', 'alt'}
obj.mapping = {
    iTerm = {obj.mash, '1'},
    chrome = {obj.mash, '2'},
    vscode = {obj.mash, '3'} 
}

function obj:iTerm()
    if hs.application.find("iTerm") then
		hs.applescript.applescript([[
			tell application "iTerm"
				create window with default profile
			end tell
		]])
	else
		hs.application.open("iTerm")
	end
end

function obj:vscode()
    hs.application.open("Visual Studio Code")
end

function obj:chrome() hs.application.open('Google Chrome') end

function obj:bindHotkeys(mapping)
    if (mapping) then
        for k,v in pairs(mapping) do self.mapping[k] = v end
      end

    hs.hotkey.bind(self.mapping.iTerm[1], self.mapping.iTerm[2], function() self:iTerm() end)
    hs.hotkey.bind(self.mapping.chrome[1], self.mapping.chrome[2], function() self:chrome() end)
    hs.hotkey.bind(self.mapping.vscode[1], self.mapping.vscode[2], function() self:vscode() end)
    return self
end

return obj

