output "png" {
  width  = 1600
  height = 467
}

variable "logo" {
  type    = "string"
  default = "images/h.png"
}

variable "edition" {
  type = "string"
}

variable "regular_font" {
  type    = "string"
  default = "fonts/klavika/regular.ttf"
}

variable "bold_font" {
  type    = "string"
  default = "fonts/klavika/bold.ttf"
}

variable "light_font" {
  type    = "string"
  default = "fonts/klavika/light.ttf"
}

variable "logo_offset" {
  type    = "string"
  default = "0"
}

layer "rectangle" "background" {
  x      = 0
  y      = 0
  width  = 1600
  height = 467

  color = "#000000"
}

layer "image" "dots_top_right" {
  content = "${file("images/dots_${color}.png")}"
  x       = 1600 - 275 + 8
  y       = 0
  width   = 275
}

layer "image" "dots_top_left" {
  content = "${file("images/dots_${color}.png")}"
  x       = 1600 - 550
  y       = 0
  width   = 275
}

layer "image" "dots_bottom_right" {
  content = "${file("images/dots_${color}.png")}"
  x       = 1600 - 275 + 8
  y       = 246
  width   = 275
}

layer "image" "dots_bottom_left" {
  content = "${file("images/dots_${color}.png")}"
  x       = 1600 - 550
  y       = 246
  width   = 275
}

layer "image" "lines" {
  content = "${file("images/thick_lines_${color}.png")}"
  x       = 0 + 1050
  y       = 467 - 467
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = 1600 - 1550
  y       = 95 - 60
  width   = 120 - 50
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 90 + 175
  y       = 70 + 50
  size    = 132
  font    = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 410 + 175
  y       = 70 + 50
  size    = 132
  font    = "fonts/klavika/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 465 + 175
  y       = 70 + 50
  size    = 132
  font    = "fonts/klavika/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 710 - 55 + "${logo_offset}"
  y       = 153 + 100
  size    = 50
  font    = "${regular_font}"
}