#!/bin/bash
EDITION="India"
DATE="30 October 2025"
URL="hashi.co/hashitalks-india"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
TAGLINE="Hear from and learn with fellow practitioners."
REGULAR_FONT="fonts/hashicorpsans/regular.ttf"
BOLD_FONT="fonts/hashicorpsans/bold.ttf"
LIGHT_FONT="fonts/hashicorpsans/light.ttf"
COLOR="blue"
INPUT_DIR="input/$EDITION"
OUTPUT_DIR="../hashitalks-assets/2025/$EDITION"
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
	--var url=$URL \
	--var date="$DATE" \
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
# picasso generate \
#   -t hashitalks/speakers/speaker.hcl \
#   -o $OUTPUT_DIR/speakers/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var date="February 16, 2023" \
#   --var url=$URL \
#   --csv $INPUT_DIR/csv/speakers.csv \
#   --csv-var speaker