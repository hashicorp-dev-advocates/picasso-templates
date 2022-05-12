#!/bin/bash
EDITION="AMÉRICA LATINA"
DATE="12 de mayo de 2022"
URL="hashi.co/hashitalks-america-latina"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
REGULAR_FONT="fonts/klavika/regular.ttf"
BOLD_FONT="fonts/klavika/bold.ttf"
LIGHT_FONT="fonts/klavika/light.ttf"
COLOR="magenta"
INPUT_DIR="input/america_latina"
OUTPUT_DIR="output/fy2023/america_latina"
NEXT="Next"
LOGO_OFFSET="-180"

mkdir -p $OUTPUT_DIR

# social
picasso generate \
		-t hashitalks/social/twitter_card.hcl \
		--var edition="AMÉRICA LATINA" \
		--var color=$COLOR \
		--var date="12 de mayo de 2022" \
		--var url=$URL \
    -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
		-t hashitalks/social/email_banner.hcl \
		--var edition="AMÉRICA LATINA" \
		--var color=$COLOR \
    --var logo_offset=$LOGO_OFFSET \
		-o $OUTPUT_DIR/social/email_banner.png

# background
picasso generate \
  -t hashitalks/streamyard/background/default.hcl \
  -o $OUTPUT_DIR/streaming/default_background.png \
  --var color=$COLOR

# branding
picasso generate \
  -t hashitalks/streamyard/overlay/branding.hcl \
  -o $OUTPUT_DIR/streaming/branding_overlay.png \
  --var edition="AMÉRICA LATINA" \

# title
picasso generate \
  -t hashitalks/streamyard/overlay/title.hcl \
  -o $OUTPUT_DIR/streaming/title.png \
  --var edition="AMÉRICA LATINA" \
  --var color=$COLOR \

# # messages
 picasso generate \
  -t hashitalks/streamyard/overlay/message.hcl \
  -o $OUTPUT_DIR/streaming/ \
  --var edition="AMÉRICA LATINA" \
  --var color=$COLOR \
  --csv $INPUT_DIR/csv/messages.csv \
  --csv-var id

 picasso generate \
  -t hashitalks/streamyard/overlay/long_message.hcl \
  -o $OUTPUT_DIR/streaming/ \
  --var color=$COLOR \
  --var edition="AMÉRICA LATINA" \
  --csv $INPUT_DIR/csv/long_messages.csv \
  --csv-var id

# picasso generate \
#   -t hashitalks/streamyard/overlay/longer_message.hcl \
#   -o $OUTPUT_DIR/streaming/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --csv $INPUT_DIR/csv/longer_messages.csv \
#   --csv-var id

# speakers
picasso generate \
  -t hashitalks/speakers/speaker.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition="AMÉRICA LATINA" \
  --var date="12 de mayo de 2022" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers.csv \
  --csv-var speaker

# # speakers
# picasso generate \
#   -t hashitalks/new/speaker_long_name.hcl \
#   -o $OUTPUT_DIR/speakers/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var date="February 17-18" \
#   --var url=$URL \
#   --csv $INPUT_DIR/csv/speakers_long_name.csv \
#   --csv-var speaker

# # speakers
# picasso generate \
#   -t hashitalks/new/speaker_longer_name.hcl \
#   -o $OUTPUT_DIR/speakers/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var date="February 17-18" \
#   --var url=$URL \
#   --csv $INPUT_DIR/csv/speakers_longer_name.csv \
#   --csv-var speaker

# # speakers
# picasso generate \
#   -t hashitalks/new/speaker_2line.hcl \
#   -o $OUTPUT_DIR/speakers/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var date="February 17-18" \
#   --var url=$URL \
#   --csv $INPUT_DIR/csv/speakers_2line.csv \
#   --csv-var speaker

# # emcees
# picasso generate \
#   -t hashitalks/new/speaker.hcl \
#   -o $OUTPUT_DIR/emcees/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var date="February 17-18" \
#   --var url=$URL \
#   --csv $INPUT_DIR/csv/emcees.csv \
#   --csv-var speaker

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