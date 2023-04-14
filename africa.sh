#!/bin/bash
EDITION="AFRICA"
DATE="18 MAY 2023"
URL="hashi.co/hashitalks-africa"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
TAGLINE="Hear from and learn with fellow practitioners."
REGULAR_FONT="fonts/metro/regular.ttf"
BOLD_FONT="fonts/metro/bold.ttf"
LIGHT_FONT="fonts/metro/light.ttf"
COLOR="yellow"
INPUT_DIR="input/$EDITION"
OUTPUT_DIR="../hashitalks-assets/2023/$EDITION"
NEXT="Next"
LOGO_OFFSET="85"
TAGLINE_OFFSET="275"

mkdir -p $OUTPUT_DIR
mkdir -p $OUTPUT_DIR/speakers
mkdir -p $OUTPUT_DIR/streaming
mkdir -p $OUTPUT_DIR/social

# social
picasso generate \
	-t hashitalks/social/twitter_card.hcl \
	--var edition=$EDITION \
	--var tagline="Hear from and learn with fellow practitioners:" \
	--var color=$COLOR \
	--var tagline_offset=$TAGLINE_OFFSET \
	--var date="18 MAY 2023" \
	--var url=$URL \
    -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
	-t hashitalks/social/email_banner.hcl \
	--var edition=$EDITION \
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
  --var date="18 MAY 2023" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers.csv \
  --csv-var speaker


# new speakers 2023_3_line
picasso generate \
  -t hashitalks/speakers/speaker_3_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="May 3-4, 2023" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers_3_line.csv \
  --csv-var speaker

# new speakers 2023_4_line
picasso generate \
  -t hashitalks/speakers/speaker_4_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition=$EDITION \
  --var date="May 3-4, 2023" \
  --var url=$URL \
  --csv $INPUT_DIR/csv/speakers_4_line.csv \
  --csv-var speaker

# # speakers
# picasso generate \
#   -t hashitalks/speakers/speaker_long_name.hcl \
#   -o $OUTPUT_DIR/speakers/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var date="February 17-18" \
#   --var url=$URL \
#   --csv $INPUT_DIR/csv/speakers_long_name.csv \
#   --csv-var speaker