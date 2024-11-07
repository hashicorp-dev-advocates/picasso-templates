#!/bin/bash
EDITION="VIỆT NAM"
DATE="20/04/2023"
URL="hashi.co/hashitalks-vietnam"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
TAGLINE="Hear from and learn with fellow practitioners."
REGULAR_FONT="fonts/metro/regular.ttf,fonts/bevietnampro/regular.ttf"
BOLD_FONT="fonts/metro/bold.ttf,fonts/bevietnampro/bold.ttf"
LIGHT_FONT="fonts/metro/light.ttf,fonts/bevietnampro/light.ttf"
EDITION_FONT="fonts/bevietnampro/light.ttf"
COLOR="yellow"
INPUT_DIR="input/vietnam"
OUTPUT_DIR="../hashitalks-assets/2023/VIETNAM"
NEXT="Next"
LOGO_OFFSET="12"
TAGLINE_OFFSET="395"

mkdir -p $OUTPUT_DIR
mkdir -p $OUTPUT_DIR/speakers
mkdir -p $OUTPUT_DIR/streaming
mkdir -p $OUTPUT_DIR/social

# social
picasso generate \
	-t hashitalks/social/twitter_card_multi-font.hcl \
	--var edition="VIỆT NAM" \
	--var tagline="Xem và học hỏi từ những người dùng giàu kinh nghiệm:" \
	--var color=$COLOR \
	--var date=$DATE \
	--var url=$URL \
	--var tagline_offset=$TAGLINE_OFFSET \
	--var regular_font=$REGULAR_FONT \
	--var bold_font=$BOLD_FONT \
	--var light_font=$LIGHT_FONT \
	--var edition_font="fonts/bevietnampro/light.ttf" \
    -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
	-t hashitalks/social/email_banner.hcl \
	--var edition="VIỆT NAM" \
	--var color=$COLOR \
    --var logo_offset=$LOGO_OFFSET \
	--var regular_font="fonts/bevietnampro/regular.ttf" \
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
  --var edition="VIỆT NAM" \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var color=$COLOR \


# speakers
picasso generate \
  -t hashitalks/speakers/speaker.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var edition="VIỆT NAM" \
  --var color=$COLOR \
  --var date="20/04/2023" \
  --var url=$URL \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var edition_font="fonts/bevietnampro/light.ttf" \
  --csv $INPUT_DIR/csv/speakers.csv \
  --csv-var speaker

  # new speakers 2023_3_line
picasso generate \
  -t hashitalks/speakers/speaker_3_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var color=$COLOR \
  --var edition="VIỆT NAM" \
  --var date="20/04/2023" \
  --var url=$URL \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var edition_font="fonts/bevietnampro/light.ttf" \
  --csv $INPUT_DIR/csv/speakers_3_line.csv \
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