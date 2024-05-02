output "png" {
  width  = 1600
  height = 900
}

variable "logo" {
  type    = "string"
  default = "images/h.png"
}

variable "edition" {
  type = "string"
}

variable "date" {
  type = "string"
}

variable "text_offset" {
  type    = "string"
  default = 0
}

variable "url" {
  type = "string"
}

variable "regular_font" {
  type    = "string"
  default = "fonts/metro/regular.ttf"
}

variable "bold_font" {
  type    = "string"
  default = "fonts/metro/bold.ttf"
}

variable "light_font" {
  type    = "string"
  default = "fonts/metro/light.ttf"
}

layer "rectangle" "background" {
  x      = 0
  y      = 0
  width  = 1600
  height = 900

  color = "#000000"
}

layer "image" "dots_left" {
  content = "${file("images/dots_${color}.png")}"
  x       = 0
  y       = 900 - 190
  width   = 215
}

layer "image" "dots_right" {
  content = "${file("images/dots_${color}.png")}"
  x       = 220
  y       = 900 - 190
  width   = 215
}

layer "image" "lines_mask" {
  content = "${file("images/lines_mask.png")}"
  x       = 0
  y       = 900 - 190
  width   = 224
}

layer "image" "lines" {
  content = "${file("images/lines_${color}.png")}"
  x       = 0
  y       = 900 - 190
  width   = 215
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = 1390
  y       = 55
  width   = 120
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 80
  y       = 40
  size    = 132
  font    = "fonts/hashicorpsans/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 400 - 250
  y       = 40
  size    = 132
  font    = "fonts/hashicorpsans/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 455
  y       = 40
  size    = 132
  font    = "fonts/hashicorpsans/light.ttf"
}

# layer "text" "edition" {
#  content = "${edition}"
#  x       = 950 - 265
#  y       = 373 - 250
#  size    = 48
#  font    = "${regular_font}"
#}

layer "text" "date" {
  content = "${date}"
  anchor  = "TOP_LEFT"
  x       = 250 + "${text_offset}"
  y       = 244
  width   = 1920 - 400 * 2 + "${text_offset}" * 2
  size    = 72
  font    = "${regular_font}"
}

layer "text" "url" {
  content = "${url}"
  x       = 250
  y       = 535
  size    = 72
  font    = "fonts/metro/bold.ttf"
}