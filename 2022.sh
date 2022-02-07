#!/bin/bash
EDITION="2022"
DATE="Thursday, February 17"
URL="hashi.co/hashitalks-2022"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
REGULAR_FONT="fonts/klavika/regular.ttf"
BOLD_FONT="fonts/klavika/bold.ttf"
LIGHT_FONT="fonts/klavika/light.ttf"
COLOR="cyan"
INPUT_DIR="input/2022"
OUTPUT_DIR="output/2022"
NEXT="Next"

mkdir -p $OUTPUT_DIR

# background
picasso generate \
  -t hashitalks/streamyard/background/default.hcl \
  -o $OUTPUT_DIR/streaming/default_background.png \
  --var color=$COLOR

# branding
picasso generate \
  -t hashitalks/streamyard/overlay/branding.hcl \
  -o $OUTPUT_DIR/streaming/branding_overlay.png \
  --var edition=$EDITION

# title
picasso generate \
  -t hashitalks/streamyard/overlay/title.hcl \
  -o $OUTPUT_DIR/streaming/title.png \
  --var color=$COLOR \
  --var edition=$EDITION

# messages
picasso generate \
  -t hashitalks/streamyard/overlay/message.hcl \
  -o $OUTPUT_DIR/streaming/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --csv $INPUT_DIR/csv/messages.csv \
  --csv-var id

picasso generate \
  -t hashitalks/streamyard/overlay/long_message.hcl \
  -o $OUTPUT_DIR/streaming/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --csv $INPUT_DIR/csv/long_messages.csv \
  --csv-var id

picasso generate \
  -t hashitalks/streamyard/overlay/longer_message.hcl \
  -o $OUTPUT_DIR/streaming/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --csv $INPUT_DIR/csv/longer_messages.csv \
  --csv-var id

# speakers
picasso generate \
  -t hashitalks/new/speaker.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 17-18" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers.csv \
  --csv-var speaker

# speakers
picasso generate \
  -t hashitalks/new/speaker_long_name.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 17-18" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers_long_name.csv \
  --csv-var speaker

  # speakers
picasso generate \
  -t hashitalks/new/speaker_longer_name.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 17-18" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers_longer_name.csv \
  --csv-var speaker

# picasso generate \
#   -t hashitalks/global/speaker_2line.hcl \
#   -o $OUTPUT_DIR/speakers/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --csv $INPUT_DIR/csv/long_speakers.csv \
#   --csv-var id

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