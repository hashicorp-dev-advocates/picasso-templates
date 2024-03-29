#!/bin/bash
EDITION="AMÉRICA LATINA"
DATE="17 de enero"
URL="hashi.co/hashitalks-america-latina"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
TAGLINE="Hear from and learn with fellow practitioners."
REGULAR_FONT="fonts/metro/regular.ttf"
BOLD_FONT="fonts/metro/bold.ttf"
LIGHT_FONT="fonts/metro/light.ttf"
COLOR="yellow"
INPUT_DIR="input/america_latina"
OUTPUT_DIR="../hashitalks-assets/2023/AMERICA_LATINA"
NEXT="Next"
LOGO_OFFSET="-188"
TAGLINE_OFFSET="275"

mkdir -p $OUTPUT_DIR
mkdir -p $OUTPUT_DIR/speakers
mkdir -p $OUTPUT_DIR/streaming
mkdir -p $OUTPUT_DIR/social

# social
picasso generate \
	-t hashitalks/social/twitter_card.hcl \
	--var edition="AMÉRICA LATINA" \
  --var date="17 de enero 2024" \
	--var tagline="Hear from and learn with fellow practitioners:" \
	--var color=$COLOR \
	--var tagline_offset=$TAGLINE_OFFSET ] \
	--var url=$URL \
  -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
	-t hashitalks/social/email_banner.hcl \
	--var edition="AMÉRICA LATINA" \
	--var color=$COLOR \
  --var logo_offset=$LOGO_OFFSET \
	-o $OUTPUT_DIR/social/email_banner.png

# # background
#  picasso generate \
#   -t hashitalks/streamyard/background/default.hcl \
#   -o $OUTPUT_DIR/streaming/default_background.png \
#   --var color=$COLOR

# # branding
# picasso generate \
#   -t hashitalks/streamyard/overlay/branding.hcl \
#   -o $OUTPUT_DIR/streaming/branding_overlay.png \
#   --var edition=$EDITION \

# title
picasso generate \
  -t hashitalks/streamyard/overlay/title.hcl \
  -o $OUTPUT_DIR/streaming/title.png \
  --var edition=$EDITION \
  --var color=$COLOR \

# speakers
 picasso generate \
   -t hashitalks/speakers/speaker.hcl \
   -o $OUTPUT_DIR/speakers/ \
   --var color=$COLOR \
   --var edition=$EDITION \
   --csv input/america_latina/csv/speakers.csv \
   --csv-var speaker

# new speakers 2023_3_line
picasso generate \
  -t hashitalks/speakers/speaker_3_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var edition=$EDITION \
  --var url=$URL \
  --csv input/america_latina/csv/speakers_3_line.csv \
  --csv-var speaker

  # new speakers 2023_4_line
picasso generate \
  -t hashitalks/speakers/speaker_4_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var edition=$EDITION \
  --var url=$URL \
  --csv input/america_latina/csv/speakers_4_line.csv \
  --csv-var speaker