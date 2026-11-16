#!/usr/bin/env bash

read -r X Y W H < <(hyprctl monitors -j | jq -r '.[] | select(.focused) | "\((.x + (.width / .scale * 0.00)) | floor) \((.y + (.height / .scale * 0.33)) | floor) \((.width / .scale * 0.33) | floor) \((.height / .scale * 0.67) | floor)"')
hyprctl --batch "dispatch hl.dsp.window.float({action='set'});dispatch hl.dsp.window.resize({x=$W, y=$H});dispatch hl.dsp.window.move({x=$X, y=$Y, relative=false})"

## EOF

