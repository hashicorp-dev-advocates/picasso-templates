#!/bin/bash
EDITION="THAILAND"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
REGULAR_FONT="fonts/klavika/regular.ttf,fonts/kanit/regular.ttf"
BOLD_FONT="fonts/klavika/bold.ttf,fonts/kanit/bold.ttf"
LIGHT_FONT="fonts/klavika/light.ttf,fonts/kanit/light.ttf"
COLOR="magenta"
INPUT_DIR="input/thailand"
OUTPUT_DIR="output/thailand"
NEXT="ลำดับถัดไป"

mkdir -p $OUTPUT_DIR

# background
picasso generate \
  -t hashitalks/streamyard/background/default.hcl \
  -o $OUTPUT_DIR/default_background.png \
  --var color=$COLOR

# branding
picasso generate \
  -t hashitalks/streamyard/overlay/branding.hcl \
  -o $OUTPUT_DIR/branding_overlay.png \
  --var edition=$EDITION

# title
picasso generate \
  -t hashitalks/streamyard/overlay/title.hcl \
  -o $OUTPUT_DIR/title.png \
  --var color=$COLOR \
  --var edition=$EDITION

# messages
picasso generate \
  -t hashitalks/streamyard/overlay/message.hcl \
  -o $OUTPUT_DIR/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --csv $INPUT_DIR/csv/messages.csv \
  --csv-var id \
  --var bold_font=$BOLD_FONT \
  --var regular_font=$REGULAR_FONT \
  --var light_font=$LIGHT_FONT

picasso generate \
  -t hashitalks/streamyard/overlay/long_message.hcl \
  -o $OUTPUT_DIR/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --csv $INPUT_DIR/csv/long_messages.csv \
  --csv-var id \
  --var bold_font=$BOLD_FONT \
  --var regular_font=$REGULAR_FONT \
  --var light_font=$LIGHT_FONT

# messages
picasso generate \
  -t hashitalks/streamyard/overlay/coc.hcl \
  -o $OUTPUT_DIR/coc.png \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var bold_font=$BOLD_FONT \
  --var regular_font=$REGULAR_FONT \
  --var light_font=$LIGHT_FONT \
  --var url="hashi.co/community-guidelines-thai"

# # speakers
# picasso generate \
#   -t hashitalks/streamyard/overlay/speaker.hcl \
#   -o $OUTPUT_DIR/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var next="$NEXT" \
#   --csv $INPUT_DIR/csv/speakers.csv \
#   --csv-var id

# picasso generate \
#   -t hashitalks/streamyard/overlay/long_speaker.hcl \
#   -o $OUTPUT_DIR/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var next="$NEXT" \
#   --csv $INPUT_DIR/csv/long_speakers.csv \
#   --csv-var id

# picasso generate \
#   -t hashitalks/streamyard/overlay/longer_speaker.hcl \
#   -o $OUTPUT_DIR/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var next="$NEXT" \
#   --csv $INPUT_DIR/csv/longer_speakers.csv \
#   --csv-var id