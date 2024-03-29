#!/bin/bash
EDITION="2024"
DATE="February 15, 2024"
URL="hashi.co/hashitalks-2024"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
REGULAR_FONT="fonts/klavika/regular.ttf"
BOLD_FONT="fonts/klavika/bold.ttf"
LIGHT_FONT="fonts/klavika/light.ttf"
COLOR="pink"
INPUT_DIR="input/2024"
OUTPUT_DIR="../hashitalks-assets/2024/2024"
NEXT="Next"
LOGO_OFFSET="160"
TAGLINE_OFFSET="275"

mkdir -p $OUTPUT_DIR
mkdir -p $OUTPUT_DIR/speakers
mkdir -p $OUTPUT_DIR/streaming
mkdir -p $OUTPUT_DIR/social
mkdir -p $OUTPUT_DIR/emcees


# social
picasso generate \
		-t hashitalks/social/twitter_card.hcl \
		--var edition=$EDITION \
    --var tagline="Hear from and learn with fellow practitioners:" \
		--var color=$COLOR \
    --var tagline_offset=$TAGLINE_OFFSET \
		--var date="February 15, 2024" \
		--var url=$URL \
    -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
		-t hashitalks/social/email_banner.hcl \
		--var edition=$EDITION \
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
  --var edition=$EDITION \

# title
picasso generate \
  -t hashitalks/streamyard/overlay/title.hcl \
  -o $OUTPUT_DIR/streaming/title.png \
  --var edition=$EDITION \
  --var color=$COLOR \

# new speakers
picasso generate \
  -t hashitalks/speakers/speaker.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 16, 2023" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers.csv \
  --csv-var speaker

# new speakers 1_line
#picasso generate \
#  -t hashitalks/speakers/speaker_1_line.hcl \
#  -o $OUTPUT_DIR/speakers/ \
#  --var color=$COLOR \
#  --var edition=$EDITION \
#  --var date="February 15, 2024" \
#  --var url=$URL \
#  --csv $INPUT_DIR/csv/speakers_1_line.csv \
#  --csv-var speaker

  # new speakers 2_line
#picasso generate \
#  -t hashitalks/speakers/speaker_2_line.hcl \
#  -o $OUTPUT_DIR/speakers/ \
#  --var color=$COLOR \
#  --var edition=$EDITION \
#  --var date="February 15, 2024" \
#  --var url=$URL \
#  --csv $INPUT_DIR/csv/speakers_2_line.csv \
#  --csv-var speaker

 # new speakers 3_line
picasso generate \
  -t hashitalks/speakers/speaker_3_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 15, 2024" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers_3_line.csv \
  --csv-var speaker

  # new speakers 4_line
picasso generate \
  -t hashitalks/speakers/speaker_4_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 15, 2024" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers_4_line.csv \
  --csv-var speaker

  # speakers
picasso generate \
  -t hashitalks/speakers/speaker_two_speakers.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var edition=$EDITION \
  --csv $INPUT_DIR/csv/speakers_two_speakers.csv \
  --csv-var speaker

 # emcees
picasso generate \
  -t hashitalks/speakers/speaker.hcl \
  -o $OUTPUT_DIR/emcees/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="February 15, 2024" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/emcees.csv \
  --csv-var title