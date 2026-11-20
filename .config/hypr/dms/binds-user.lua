-- Your keybinds. dms setup never overwrites this file.
-- Loaded after binds.lua: binding a stock key here replaces it, hl.unbind("SUPER + X") frees it.
-- Saving in the DMS keybind editor rewrites this file and keeps only hl.bind/hl.unbind lines.

hl.unbind("SUPER + D")
hl.bind("SUPER + D", hl.dsp.exec_cmd("dms ipc call spotlight toggle"), { description = "Default Launcher: Toggle" })
hl.unbind("SUPER + Apostrophe")
hl.unbind("SUPER + L")
hl.unbind("SUPER + SHIFT + P")
hl.unbind("SUPER + P")
hl.bind("SUPER + P", hl.dsp.exec_cmd("dms ipc call bar toggle name \"Main Bar\""), { description = "dms ipc call bar toggle name \"Main Bar\"" })
