#!/bin/bash
EDITION="JAPAN"
DATE="2023 年 9 月 14 日"
URL="hashi.co/hashitalks-japan"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
TAGLINE="Hear from and learn with fellow practitioners."
REGULAR_FONT="fonts/metro/regular.ttf,fonts/meiryo/regular.ttf"
BOLD_FONT="fonts/metro/bold.ttf,fonts/meiryo/bold.ttf"
LIGHT_FONT="fonts/metro/light.ttf,fonts/meiryo/light.ttf"
TITLE_BOLD_FONT="fonts/gilmer/bold.ttf,fonts/meiryo/bold.ttf"
EDITION_FONT="fonts/metro/light.ttf,fonts/meiryo/light.ttf"
COLOR="yellow"
INPUT_DIR="input/$EDITION"
OUTPUT_DIR="../hashitalks-assets/2023/$EDITION"
NEXT="Next"
LOGO_OFFSET="105"
TAGLINE_OFFSET="350"

mkdir -p $OUTPUT_DIR
mkdir -p $OUTPUT_DIR/speakers
mkdir -p $OUTPUT_DIR/streaming
mkdir -p $OUTPUT_DIR/social

# social
picasso generate \
	-t hashitalks/social/twitter_card_multi-font.hcl \
	--var edition=$EDITION \
	--var tagline="コミュニティ メンバーの意見に耳を傾け、 知識を深めます:" \
	--var color=$COLOR \
	--var date="2023 年 9 月 14 日" \
	--var url=$URL \
	--var tagline_offset=$TAGLINE_OFFSET \
	--var regular_font=$REGULAR_FONT \
	--var bold_font=$BOLD_FONT \
	--var light_font=$LIGHT_FONT \
	--var edition_font="fonts/metro/light.ttf" \
    -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
	-t hashitalks/social/email_banner.hcl \
	--var edition=$EDITION \
	--var color=$COLOR \
    --var logo_offset=$LOGO_OFFSET \
	--var regular_font=$REGULAR_FONT \
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

# speakers no_space
 picasso generate \
  -t hashitalks/speakers/speaker_no_space.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var edition=$EDITION \
  --var url=$URL \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var regular_font=$REGULAR_FONT \
  --var title_bold_font=$TITLE_BOLD_FONT \
  --var edition_font=$EDITION_FONT \
  --csv $INPUT_DIR/csv/speakers_no_space.csv \
  --csv-var speaker

# speakers 2_speakers
picasso generate \
  -t hashitalks/speakers/speaker_two_speakers.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var edition=$EDITION \
  --var url=$URL \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var regular_font=$REGULAR_FONT \
  --var title_bold_font=$TITLE_BOLD_FONT \
  --var edition_font=$EDITION_FONT \
  --csv $INPUT_DIR/csv/speakers_two_speakers.csv \
  --csv-var speaker

# speakers 2_speakers_no_space
picasso generate \
  -t hashitalks/speakers/speaker_two_speakers_no_space.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var edition=$EDITION \
  --var url=$URL \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var regular_font=$REGULAR_FONT \
  --var title_bold_font=$TITLE_BOLD_FONT \
  --var edition_font=$EDITION_FONT \
  --csv $INPUT_DIR/csv/speakers_two_speakers_no_space.csv \
  --csv-var speaker

# new speakers 2023_3_line
picasso generate \
  -t hashitalks/speakers/speaker_3_line.hcl \
  -o $OUTPUT_DIR/speakers/ \
  --var edition=$EDITION \
  --var url=$URL \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var regular_font=$REGULAR_FONT \
  --var title_bold_font=$TITLE_BOLD_FONT \
  --var edition_font=$EDITION_FONT \
  --csv $INPUT_DIR/csv/speakers_3_line.csv \
  --csv-var speaker