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

variable "next" {
  type    = "string"
  default = "next up"
}

variable "title" {
  type = "string"
}

variable "speaker" {
  type = "string"
}

variable "text_offset" {
  type    = "string"
  default = "0"
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

layer "text" "next" {
  content = "${next}"
  anchor  = "TOP_LEFT"
  x       = 64
  y       = 34
  size    = 48
  font    = "${regular_font}"
}

layer "text" "title" {
  content = "${title}"
  anchor  = "TOP_LEFT"
  x       = 250 + "${text_offset}"
  y       = 380 - (76 * 2)
  width   = 1920 - 250 * 2 + "${text_offset}" * 2
  size    = 76
  font    = "${bold_font}"
}

layer "text" "speaker" {
  content = "${speaker}"
  anchor  = "TOP_LEFT"
  x       = 250 + "${text_offset}"
  y       = 380 + (76 * 2)
  size    = 76
  font    = "${regular_font}"
  color   = "#727274"
}