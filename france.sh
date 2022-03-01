#!/bin/bash
EDITION="FRANCE"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
REGULAR_FONT="fonts/klavika/regular.ttf"
BOLD_FONT="fonts/klavika/bold.ttf"
LIGHT_FONT="fonts/klavika/light.ttf"
COLOR="yellow"
INPUT_DIR="input/france"
OUTPUT_DIR="output/france"
NEXT="Suivant"

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
  --csv-var id

picasso generate \
  -t hashitalks/streamyard/overlay/long_message.hcl \
  -o $OUTPUT_DIR/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --csv $INPUT_DIR/csv/long_messages.csv \
  --csv-var id

picasso generate \
  -t hashitalks/streamyard/overlay/coc.hcl \
  -o $OUTPUT_DIR/coc.png \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var bold_font=$BOLD_FONT \
  --var regular_font=$REGULAR_FONT \
  --var light_font=$LIGHT_FONT \
  --var message="Please take a moment to read through our community guidelines" \
  --var url="hashi.co/community-guidelines-french"

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