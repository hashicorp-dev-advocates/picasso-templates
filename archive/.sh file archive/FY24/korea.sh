#!/bin/bash
EDITION="대한민국"
DATE="2023년 9월 7일"
URL="hashi.co/hashitalks-korea"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
TAGLINE="Hear from and learn with fellow practitioners."
REGULAR_FONT="fonts/metro/regular.ttf,fonts/notosanskr/regular.ttf"
BOLD_FONT="fonts/metro/bold.ttf,fonts/notosanskr/bold.ttf"
LIGHT_FONT="fonts/metro/light.ttf,fonts/notosanskr/light.ttf"
TITLE_BOLD_FONT="fonts/gilmer/bold.ttf,fonts/notosanskr/bold.ttf"
EDITION_FONT="fonts/metro/light.ttf,fonts/notosanskr/light.ttf"
COLOR="yellow"
INPUT_DIR="input/KOREA"
OUTPUT_DIR="../hashitalks-assets/2023/KOREA"
NEXT="Next"
LOGO_OFFSET="85"
TAGLINE_OFFSET="0"

mkdir -p $OUTPUT_DIR
mkdir -p $OUTPUT_DIR/speakers
mkdir -p $OUTPUT_DIR/streaming
mkdir -p $OUTPUT_DIR/social

# social
picasso generate \
	-t hashitalks/social/twitter_card_multi-font.hcl \
	--var edition=$EDITION \
	--var tagline="동료 수련생에게서 듣고 함께 배웁니다:" \
	--var color=$COLOR \
	--var date="2023년 9월 7일" \
	--var url=$URL \
	--var tagline_offset=$TAGLINE_OFFSET \
	--var regular_font=$REGULAR_FONT \
	--var bold_font=$BOLD_FONT \
	--var light_font=$LIGHT_FONT \
	--var edition_font="fonts/notosanskr/light.ttf" \
    -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
	-t hashitalks/social/email_banner.hcl \
	--var edition=$EDITION \
	--var color=$COLOR \
    --var logo_offset=$LOGO_OFFSET \
	--var regular_font="fonts/notosanskr/regular.ttf" \
	--var bold_font=$BOLD_FONT \
	--var light_font=$LIGHT_FONT \
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
  --var edition=$EDITION \
  --var url=$URL \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var regular_font=$REGULAR_FONT \
  --var title_bold_font=$TITLE_BOLD_FONT \
  --var edition_font=$EDITION_FONT \
  --csv $INPUT_DIR/csv/speakers.csv \
  --csv-var speaker