#!/bin/bash
EDITION="Hub"
DATE="Virtual community events, delivered in local languages."
URL="hashi.co/hashitalks-hub"

ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
REGULAR_FONT="fonts/hashicorpsans/regular.ttf"
BOLD_FONT="fonts/hashicorpsans/bold.ttf"
LIGHT_FONT="fonts/hashicorpsans/light.ttf"
COLOR="blue"
INPUT_DIR="input/hub"
OUTPUT_DIR="output/fy2026/hub"
NEXT="Next"
LOGO_OFFSET="90"

mkdir -p $OUTPUT_DIR

# social
picasso generate \
  -t hashitalks/social/twitter_card_hub.hcl \
  --var edition=$EDITION \
  --var color=$COLOR \
  --var date="Virtual community events, delivered in local languages." \
  --var url=$URL \
  -o $OUTPUT_DIR/social/twitter_card.png

picasso generate \
  -t hashitalks/social/email_banner.hcl \
  --var edition=$EDITION \
  --var color=$COLOR \
  --var logo_offset=$LOGO_OFFSET \
  -o $OUTPUT_DIR/social/email_banner.png