EDITION="JAPAN"
ID=$(echo $EDITION | tr '[:upper:]' '[:lower:]')
REGULAR_FONT="fonts/klavika/regular.ttf,fonts/meiryo/regular.ttf"
BOLD_FONT="fonts/klavika/bold.ttf,fonts/meiryo/bold.ttf"
LIGHT_FONT="fonts/klavika/light.ttf"
COLOR="cyan"

# picasso generate \
#   -t hashitalks/new/test.hcl \
#   -o output/obs_test.png

picasso generate \
  -t hashitalks/new/obs_background.hcl \
  -o output/obs_background_$ID.png \
  --var edition="$EDITION" \
  --var color=$COLOR

picasso generate \
  -t hashitalks/new/obs_title.hcl \
  -o output/obs_title_$ID.png \
  --var edition="$EDITION" \
  --var title_offset=0 \
  --var color=$COLOR

picasso generate \
  -t hashitalks/new/obs_message.hcl \
  -o output/obs_starting_$ID.png \
  --var edition="$EDITION" \
  --var message_regional="イベントはまもなく開始します" \
  --var message_english="The event will start soon" \
  --var text_offset=150 \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var color=$COLOR

picasso generate \
  -t hashitalks/new/obs_message.hcl \
  -o output/obs_break_$ID.png \
  --var edition="$EDITION" \
  --var message_regional="しばらく休憩いたします" \
  --var message_english="We will be back after a short break" \
  --var text_offset=150 \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var color=$COLOR

picasso generate \
  -t hashitalks/new/obs_message.hcl \
  -o output/obs_problems_$ID.png \
  --var edition="$EDITION" \
  --var message_regional="技術的な問題が起きております" \
  --var message_english="we are experiencing technical difficulties" \
  --var text_offset=50 \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var color=$COLOR

picasso generate \
  -t hashitalks/new/obs_message.hcl \
  -o output/obs_next_$ID.png \
  --var edition="$EDITION" \
  --var message_regional="次のトークはまもなく開始します" \
  --var message_english="The next talk will start soon" \
  --var text_offset=100 \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var color=$COLOR

picasso generate \
  -t hashitalks/new/obs_speaker.hcl \
  -o output/obs_speaker \
  --var next="次は" \
  --var text_offset=-50 \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var color=$COLOR \
  --csv hashitalks_japan.csv \
  --csv-var output

picasso generate \
  -t hashitalks/new/obs_speaker_long.hcl \
  -o output/obs_speaker \
  --var next="次は" \
  --var text_offset=-50 \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var color=$COLOR \
  --csv hashitalks_japan_long.csv \
  --csv-var output

picasso generate \
  -t hashitalks/new/obs_speaker_longer.hcl \
  -o output/obs_speaker \
  --var next="次は" \
  --var text_offset=-50 \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var color=$COLOR \
  --csv hashitalks_japan_longer.csv \
  --csv-var output

picasso generate \
  -t hashitalks/new/obs_empty.hcl \
  -o output/obs_empty_$ID.png \
  --var color=$COLOR

picasso generate \
  -t hashitalks/new/obs_message.hcl \
  -o output/obs_live_$ID.png \
  --var edition="$EDITION" \
  --var message_regional="" \
  --var message_english="" \
  --var regular_font=$REGULAR_FONT \
  --var bold_font=$BOLD_FONT \
  --var light_font=$LIGHT_FONT \
  --var color=$COLOR