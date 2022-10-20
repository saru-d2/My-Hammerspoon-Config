hs.loadSpoon("ShiftIt")
spoon.ShiftIt:bindHotkeys({
	maximum = {{ 'ctrl', 'shift', 'cmd' }, 'up' },
})
hs.loadSpoon("spawnApps")
spoon.spawnApps:bindHotkeys({
	iTerm = {{ 'ctrl', 'alt', 'cmd' }, 'T'},
	chrome = {{'ctrl', 'alt', 'cmd'}, 'G'},
	vscode = {{'ctrl', 'alt', 'cmd'}, 'C'}
})
