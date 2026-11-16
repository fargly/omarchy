-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")
--

-- hl.window_rule({
--     match = { class = "^code$" },
--     float = true,
--     size = { 1280, 800 },
--     move = { 640, 400 },
--     pin = true,
-- })

-- Broken Directive
-- hl.bind(", F12", hl.dsp.exec({ cmd = os.getenv("HOME") .. "/.local/bin/float-bottom-right.sh" }))

-- Broken Directive
-- hl.bind(", F12", function()
--   local mon
--   for _, m in ipairs(hl.monitors()) do
--     if m.focused then
--       mon = m
--       break
--     end
--   end
--
--   if not mon then return end
--
--   local scale = mon.scale or 1
--   local w = math.floor((mon.width / scale) * 0.67)
--   local h = math.floor((mon.height / scale) * 0.67)
--   local x = math.floor(mon.x + (mon.width / scale) * 0.33)
--   local y = math.floor(mon.y + (mon.height / scale) * 0.33)
--
--   hl.dispatch(hl.dsp.window.float({ action = "set" }))
--   hl.dispatch(hl.dsp.window.resize({ x = w, y = h }))
--   hl.dispatch(hl.dsp.window.move({ x = x, y = y, relative = false }))
-- end)


-- hl.bind("F12", function()
--   local mon
--   for _, m in ipairs(hl.monitors()) do
--     if m.focused then
--       mon = m
--       break
--     end
--   end
--
--   if not mon then return end
--
--   local scale = mon.scale or 1
--   local w = math.floor((mon.width / scale) * 0.67)
--   local h = math.floor((mon.height / scale) * 0.67)
--   local x = math.floor(mon.x + (mon.width / scale) * 0.33)
--   local y = math.floor(mon.y + (mon.height / scale) * 0.33)
--
--   hl.dispatch(hl.dsp.window.float({ action = "set" }))
--   hl.dispatch(hl.dsp.window.resize({ x = w, y = h }))
--   hl.dispatch(hl.dsp.window.move({ x = x, y = y, relative = false }))
-- end)

-- hl.bind("F12", function()
--   hl.exec(os.getenv("HOME") .. "/.local/bin/float-bottom-right.sh")
-- end)

-- hl.bind("F12", function()
--   os.execute([[
--     read -r X Y W H < <(hyprctl monitors -j | jq -r '.[] | select(.focused) | "\((.x + (.width / .scale * 0.33)) | floor) \((.y + (.height / .scale * 0.33)) | floor) \((.width / .scale * 0.67) | floor) \((.height / .scale * 0.67) | floor)"')
--     hyprctl --batch "dispatch hl.dsp.window.float({action='set'});dispatch hl.dsp.window.resize({x=$W, y=$H});dispatch hl.dsp.window.move({x=$X, y=$Y, relative=false})" &
--   ]])
-- end)

-- hl.bind("F12", function()
--   hl.dispatch(hl.dsp.spawn({ cmd = "/home/fargly/.local/bin/float-bottom-right.sh" }))
-- end)

-- hl.bind("F13", hl.dsp.exec_cmd("/home/fargly/.local/bin/float-bottom-right.sh"))
-- hl.bind("F14", hl.dsp.exec_cmd("/home/fargly/.local/bin/float-bottom-left.sh"))

hl.bind("XF86Tools", hl.dsp.exec_cmd("/home/fargly/.local/bin/float-bottom-right.sh"))
hl.bind("XF86Launch5", hl.dsp.exec_cmd("/home/fargly/.local/bin/float-bottom-left.sh"))
hl.bind("XF86Launch6", hl.dsp.exec_cmd("/home/fargly/.local/bin/float-bottom-full.sh"))
hl.bind("XF86Launch7", hl.dsp.exec_cmd("/home/fargly/.local/bin/float-top-right.sh"))
hl.bind("XF86Launch8", hl.dsp.exec_cmd("/home/fargly/.local/bin/float-top-left.sh"))


