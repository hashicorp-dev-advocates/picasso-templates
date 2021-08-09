#!/bin/bash

# define the event name
EVENT_EDITION="Event"

# define the event date; local language is supported
EVENT_DATE="Jan 1, 2022"

# define the event URL (omit "http://www")
# depending on the length of this, you might need to adjust the
# EVENT_URL_POSITION variable below
EVENT_URL="hashi.co/hashitalksevent"

# define the X position of the event URL
# this is used on the email image WITH date and URL
EVENT_URL_POSITION="556"

# define the input directory
INPUT_DIR="sources/${EVENT_EDITION}"

# define the output directory
OUTPUT_DIR="generated/${EVENT_EDITION}"

# create output directory
mkdir -p "${OUTPUT_DIR}"

# generate speaker card(s)
picasso \
  generate \
    --template "speaker_1line.hcl" \
    --var edition="${EVENT_EDITION}" \
    --var date="${EVENT_DATE}" \
    --var url="${EVENT_URL}" \
    --csv "${INPUT_DIR}/data.csv" \
    --output "${OUTPUT_DIR}/"

# generate email header image WITH URL and date
picasso \
  generate \
    --template "email.hcl" \
    --var edition="${EVENT_EDITION}" \
    --var date="${EVENT_DATE}" \
    --var url="${EVENT_URL}" \
    --var url_position="${EVENT_URL_POSITION}" \
    --output "${OUTPUT_DIR}/email-full.png"

# generate email header image WITHOUT URL and date
picasso \
  generate \
    --template "email.hcl" \
    --var edition="${EVENT_EDITION}" \
    --var date=" " \
    --var url=" " \
    --var url_position="0" \
    --output "${OUTPUT_DIR}/email-minimal.png"

# open output directory (when using macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
 open "${OUTPUT_DIR}"
fi
