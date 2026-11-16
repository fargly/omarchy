#!/usr/bin/env bash

# read -r X Y W H < <(hyprctl monitors -j | jq -r '.[] | select(.focused) | "\((.width / .scale * 0.33) | floor) \((.height / .scale * 0.33) | floor) \((.width / .scale * 0.67) | floor) \((.height / .scale * 0.67) | floor)"')

# hyprctl --batch "dispatch hl.dsp.window.float({action='set'});dispatch hl.dsp.window.resize({x=$W, y=$H});dispatch hl.dsp.window.move({x=$X, y=$Y})"

# hyprctl monitors -j | jq

## Create 2/3rds movement script

mkdir -p ~/.local/bin
cat << 'EOF' > ~/.local/bin/float-bottom-right.sh
#!/usr/bin/env bash
read -r X Y W H < <(hyprctl monitors -j | jq -r '.[] | select(.focused) | "\((.x + (.width / .scale * 0.33)) | floor) \((.y + (.height / .scale * 0.33)) | floor) \((.width / .scale * 0.67) | floor) \((.height / .scale * 0.67) | floor)"')

hyprctl --batch "dispatch hl.dsp.window.float({action='set'});dispatch hl.dsp.window.resize({x=$W, y=$H});dispatch hl.dsp.window.move({x=$X, y=$Y, relative=false})"
EOF
chmod +x ~/.local/bin/float-bottom-right.sh


## EOF
