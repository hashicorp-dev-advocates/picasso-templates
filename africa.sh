#!/bin/bash
EDITION="Africa"
DATE="26 September 2024"
URL="hashi.co/hashitalks-africa"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
TAGLINE="Hear from and learn with fellow practitioners."
REGULAR_FONT="fonts/hashicorpsans/regular.ttf"
BOLD_FONT="fonts/hashicorpsans/bold.ttf"
LIGHT_FONT="fonts/hashicorpsans/light.ttf"
COLOR="pink"
INPUT_DIR="input/$EDITION"
OUTPUT_DIR="../hashitalks-assets/2024/$EDITION"
NEXT="Next"
LOGO_OFFSET="0"
TAGLINE_OFFSET="275"

mkdir -p $OUTPUT_DIR
mkdir -p $OUTPUT_DIR/speakers
mkdir -p $OUTPUT_DIR/streaming
mkdir -p $OUTPUT_DIR/social

# social
picasso generate \
  -t hashitalks/social/twitter_card.hcl \
  --var edition=$EDITION \
  --var tagline="$TAGLINE" \
  --var color=$COLOR \
  --var tagline_offset=$TAGLINE_OFFSET \
  --var date="$DATE" \
  --var url=$URL \
  -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
  -t hashitalks/social/email_banner.hcl \
  --var edition=$EDITION \
  --var color=$COLOR \
  --var logo_offset=$LOGO_OFFSET \
  -o $OUTPUT_DIR/social/email_banner.png

# title
# picasso generate \
#   -t hashitalks/streamyard/overlay/title.hcl \
#   -o $OUTPUT_DIR/streaming/title.png \
#   --var edition=$EDITION \
#   --var color=$COLOR \

# speakers
picasso generate \
  -t hashitalks/speakers/speaker.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 16, 2023" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers.csv \
  --csv-var speaker

# speakers 1_line
#picasso generate \
#  -t hashitalks/speakers/speaker_1_line.hcl \
#  -o $OUTPUT_DIR/speakers/ \
#  --var color=$COLOR \
#  --var edition=$EDITION \
#  --var date="February 15, 2024" \
#  --var url=$URL \
#  --csv $INPUT_DIR/csv/speakers_1_line.csv \
#  --csv-var speaker

# speakers 2_line
#picasso generate \
#  -t hashitalks/speakers/speaker_2_line.hcl \
#  -o $OUTPUT_DIR/speakers/ \
#  --var color=$COLOR \
#  --var edition=$EDITION \
#  --var date="February 15, 2024" \
#  --var url=$URL \
#  --csv $INPUT_DIR/csv/speakers_2_line.csv \
#  --csv-var speaker

 # speakers 3_line
picasso generate \
  -t hashitalks/speakers/speaker_3_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 15, 2024" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers_3_line.csv \
  --csv-var speaker

  # speakers 4_line
picasso generate \
  -t hashitalks/speakers/speaker_4_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 15, 2024" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers_4_line.csv \
  --csv-var speaker

  # speakers 2_speakers
# picasso generate \
#   -t hashitalks/speakers/speaker_two_speakers.hcl \
#   -o $OUTPUT_DIR/speakers/ \
#   --var edition=$EDITION \
#   --csv $INPUT_DIR/csv/speakers_two_speakers.csv \
#   --csv-var speaker