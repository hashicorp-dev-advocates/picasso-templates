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

variable "url" {
  type = "string"
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
  x       = 190
  y       = 315
  width   = 120
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 330
  y       = 290
  size    = 132
  font    = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 650
  y       = 290
  size    = 132
  font    = "fonts/klavika/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 705
  y       = 290
  size    = 132
  font    = "fonts/klavika/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 950
  y       = 373
  size    = 48
  font    = "fonts/klavika/regular.ttf"
}

layer "text" "date" {
  content = "${date}"
  x       = 465
  y       = 710
  size    = 32
  font    = "fonts/arial/bold.ttf"
}

layer "text" "url" {
  content = "${url}"
  x       = 465
  y       = 750
  size    = 32
  font    = "fonts/arial/regular.ttf"
}