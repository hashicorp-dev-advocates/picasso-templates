#
# This template generates a speaker card for a talk that has a medium long title that fits on 2 line.
# The required variables for this template are:
# - edition
# - speaker
# - title
# - photo
# - date
# - url
#

output "png" {
  width = 1600
  height = 900
}

variable "background" {
  type = "string"
  default = "images/background_1600x900.png"
}

variable "logo" {
  type = "string"
  default = "images/h.png"
}

variable "edition" {
  type    = "string"
  default = "Australia / New Zealand"
}

variable "speaker" {
  type = "string"
}

variable "title" {
  type = "string"
}

layer "image" "background" {
  content = "${file(background)}"
  x = 0
  y = 0
}

layer "image" "logo" {
  content = "${file(logo)}"
  x = 1600 - 200
  y = 900 - 200
}

layer "text" "hashi" {
  content = "Hashi"
  x = 210
  y = 150
  size = 80
  font = "fonts/klavika/KlavikaBasic-Bold.ttf"
}

layer "text" "t" {
  content = "T"
  x = 405
  y = 150
  size = 80
  font = "fonts/klavika/KlavikaBasic-Light.ttf"
}

layer "text" "alks_edition" {
  content = "alks: ${edition}"
  x = 440
  y = 150
  size = 80
  font = "fonts/klavika/KlavikaBasic-Light.ttf"
}

layer "text" "speaker" {
  content = "${speaker}"
  x = 210
  y = 330
  size = 72
  font = "fonts/arial/bold.ttf"
}

layer "text" "title" {
  content = "${title}"
  width = 1250
  x = 210
  y = 395
  size = 52
  font = "fonts/arial/regular.ttf"
}
