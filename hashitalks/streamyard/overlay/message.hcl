picasso {
  version = "v0.2.0"
}

output "png" {
  width  = 1920
  height = 1080
}

variable "color" {
  type    = "string"
  default = "yellow"
}

variable "logo" {
  type    = "string"
  default = "images/h.png"
}

variable "edition" {
  type = "string"
}

variable "message_english" {
  type    = "string"
  default = "The event will start soon"
}

variable "text_offset" {
  type    = "string"
  default = 0
}

variable "regular_font" {
  type    = "string"
  default = "fonts/arial/regular.ttf"
}

variable "bold_font" {
  type    = "string"
  default = "fonts/arial/bold.ttf"
}

variable "light_font" {
  type    = "string"
  default = "fonts/arial/light.ttf"
}

layer "rectangle" "background" {
  x      = 0
  y      = 0
  width  = 1920
  height = 1080
  color  = "#000000"
}

layer "image" "dots_left" {
  content = "${file("images/dots_${color}.png")}"
  x       = 0
  y       = 1080 - (300)
  height  = 300
}

layer "image" "dots_right" {
  content = "${file("images/dots_${color}.png")}"
  x       = 340
  y       = 1080 - (300)
  height  = 300
}

layer "image" "lines_mask" {
  content = "${file("images/lines_mask.png")}"
  x       = 0 + 3
  y       = 1080 - (300)
  height  = 300
}

layer "image" "lines" {
  content = "${file("images/lines_${color}.png")}"
  x       = 0
  y       = 1080 - (300)
  height  = 300
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = 1920 - 48 - 64
  y       = 34
  height  = 64
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 65
  y       = 22
  size    = 76
  font    = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 250
  y       = 22
  size    = 76
  font    = "fonts/klavika/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 280
  y       = 22
  size    = 76
  font    = "fonts/klavika/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 420
  y       = 74
  size    = 24
  font    = "fonts/klavika/regular.ttf"
}

layer "text" "message_regional" {
  content = "${message_regional}"
  anchor  = "TOP_LEFT"
  x       = 250 + "${text_offset}"
  y       = 380
  size    = 76
  font    = "${bold_font}"
}

layer "text" "message_english" {
  content = "${message_english}"
  anchor  = "TOP_LEFT"
  x       = 250 + "${text_offset}"
  y       = 380 + 96
  size    = 76
  font    = "${light_font}"
  color   = "#727274"
}