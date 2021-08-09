# This template generates a speaker card for a talk that has a short title that fits on 1 line.
# The required variables for this template are:
#
# - assets_path
# - color
# - edition
# - date
# - url
# - url_position

output "png" {
  width  = 1600
  height = 468
}

variable "assets_path" {
  type    = "string"
  default = "../../../picasso-assets"
}

variable "color" {
  type    = "string"
  default = "yellow"
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

variable "url_position" {
  type = "string"
}

layer "rectangle" "background" {
  x      = 0
  y      = 0
  width  = 1600
  height = 468

  color "hex" {
    value = "#000000"
  }
}

layer "image" "dots" {
  content = "${file("${assets_path}/images/dots_${color}.png")}"
  x       = 1600 - 540
  y       = 0
  width   = 540
  height  = 468
}

layer "image" "lines_mask" {
  content = "${file("${assets_path}/images/lines_mask.png")}"
  x       = 1600 - 540
  y       = 0
  width   = 540
  height  = 468
}

layer "image" "lines" {
  content = "${file("${assets_path}/images/lines_${color}.png")}"
  x       = 1600 - 540
  y       = 0
  width   = 540
  height  = 468
}

layer "image" "logo" {
  content = "${file("${assets_path}/images/h.png")}"
  x       = 42
  y       = 52
  width   = 58
  height  = 62
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 280
  y       = 160
  size    = 112
  font    = "${assets_path}/fonts/klavika/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 550
  y       = 160
  size    = 112
  font    = "${assets_path}/fonts/klavika/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 610
  y       = 160
  size    = 112
  font    = "${assets_path}/fonts/klavika/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 705 # this value is dependant on the length of "edition"
  y       = 290
  size    = 35
  font    = "${assets_path}/fonts/klavika/bold.ttf"
}

layer "text" "date" {
  content = "${date}"
  x       = 280
  y       = 360
  size    = 21
  font    = "${assets_path}/fonts/arial/bold.ttf"
}

layer "text" "url" {
  content = "${url}"
  x       = "${url_position}"
  y       = 360
  size    = 21
  font    = "${assets_path}/fonts/arial/regular.ttf"
}
