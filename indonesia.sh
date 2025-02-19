#!/bin/bash
EDITION="Indonesia"
DATE="21 Agustus 2025"
URL="hashi.co/hashitalks-indonesia"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
TAGLINE="Mendengar dan belajar dari rekan-rekan praktisi:"
REGULAR_FONT="fonts/klavika/regular.ttf"
BOLD_FONT="fonts/klavika/bold.ttf"
LIGHT_FONT="fonts/klavika/light.ttf"
COLOR="blue"
INPUT_DIR="input/indonesia"
OUTPUT_DIR="../hashitalks-assets/2025/$EDITION"
NEXT="Next"
LOGO_OFFSET="0"
TAGLINE_OFFSET="425"

mkdir -p $OUTPUT_DIR
mkdir -p $OUTPUT_DIR/speakers
mkdir -p $OUTPUT_DIR/streaming
mkdir -p $OUTPUT_DIR/social

# social
picasso generate \
	-t hashitalks/social/twitter_card.hcl \
	--var edition=$EDITION \
	--var tagline="Mendengar dan belajar dari rekan-rekan praktisi:" \
	--var color=$COLOR \
  --var tagline_offset=$TAGLINE_OFFSET \
	--var date="21 Agustus 2025" \
	--var url=$URL \
  -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
	-t hashitalks/social/email_banner.hcl \
	--var edition=$EDITION \
	--var color=$COLOR \
  --var logo_offset=$LOGO_OFFSET \
	-o $OUTPUT_DIR/social/email_banner.png

# speakers
# picasso generate \
#   -t hashitalks/speakers/speaker.hcl \
#   -o $OUTPUT_DIR/speakers/ \
#   --var color=$COLOR \
#   --var edition=$EDITION \
#   --var date="25 APRIL 2025" \
#   --var url=$URL \
#   --csv $INPUT_DIR/csv/speakers.csv \
#   --csv-var speaker