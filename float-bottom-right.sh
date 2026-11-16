#!/usr/bin/env bash

read -r X Y W H < <(hyprctl monitors -j | jq -r '.[] | select(.focused) | "\((.x + (.width / .scale * 0.33)) | floor) \((.y + (.height / .scale * 0.33)) | floor) \((.width / .scale * 0.67) | floor) \((.height / .scale * 0.67) | floor)"')
hyprctl --batch "dispatch hl.dsp.window.float({action='set'});dispatch hl.dsp.window.resize({x=$W, y=$H});dispatch hl.dsp.window.move({x=$X, y=$Y, relative=false})"

## EOF


# [
#   {
#     "id": 0,
#     "name": "eDP-1",
#     "description": "BOE 0x0CC6",
#     "make": "BOE",
#     "model": "0x0CC6",
#     "serial": "",
#     "width": 1920,
#     "height": 1200,
#     "physicalWidth": 340,
#     "physicalHeight": 220,
#     "refreshRate": 60.00100,
#     "x": 5760,
#     "y": 960,
#     "activeWorkspace": {
#       "id": 2,
#       "name": "2"
#     },
#     "specialWorkspace": {
#       "id": 0,
#       "name": ""
#     },
#     "reserved": [
#       0,
#       26,
#       0,
#       0
#     ],
#     "scale": 1,
#     "transform": 0,
#     "focused": true,
#     "dpmsStatus": true,
#     "vrr": false,
#     "solitary": "0",
#     "solitaryBlockedBy": [
#       "WINDOWED",
#       "CANDIDATE"
#     ],
#     "activelyTearing": false,
#     "tearingBlockedBy": [
#       "NOT_TORN",
#       "USER",
#       "CANDIDATE"
#     ],
#     "directScanoutTo": "0",
#     "directScanoutBlockedBy": [
#       "USER",
#       "CANDIDATE"
#     ],
#     "disabled": false,
#     "currentFormat": "XRGB8888",
#     "mirrorOf": "none",
#     "availableModes": [
#       "1920x1200@60.00Hz",
#       "1920x1200@48.00Hz",
#       "1920x1080@60.00Hz",
#       "1600x1200@60.00Hz",
#       "1680x1050@60.00Hz",
#       "1280x1024@60.00Hz",
#       "1440x900@60.00Hz",
#       "1280x800@60.00Hz",
#       "1280x720@60.00Hz",
#       "1024x768@60.00Hz",
#       "800x600@60.00Hz",
#       "640x480@60.00Hz"
#     ],
#     "colorManagementPreset": "srgb",
#     "sdrBrightness": 1,
#     "sdrSaturation": 1,
#     "sdrMinLuminance": 0.2,
#     "sdrMaxLuminance": 80,
#     "hardwareCursorsInUse": true
#   }
# ]
