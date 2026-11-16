#!/usr/bin/env bash

read -r X Y W H < <(hyprctl monitors -j | jq -r '.[] | select(.focused) | 
    (.reserved[0] / .scale) as $reserved_top |
    (if $reserved_top > 0 then $reserved_top else 32 end) as $bar_height |
    "\((.x + (.width / .scale * 0.00)) | floor) \((.y + $bar_height) | floor) \((.width / .scale * 0.33) | floor) \(((.height / .scale * 0.33) - $bar_height) | floor)"')

hyprctl --batch "dispatch hl.dsp.window.float({action='set'});dispatch hl.dsp.window.resize({x=$W, y=$H});dispatch hl.dsp.window.move({x=$X, y=$Y, relative=false})"

## EOF
