# 
# This template generates a speaker card for a talk that has a short title that fits on 1 line.
# The required variables for this template are:
# - edition
# - speaker
# - title
# - photo
# - date
# - url
# - color
# 

output "png" {
  width  = 1200
  height = 675
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

variable "speaker" {
  type = "string"
}

variable "title" {
  type = "string"
}

variable "photo" {
  type = "string"
}

variable "date" {
  type = "string"
}

variable "url" {
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

layer "rectangle" "background" {
  x      = 0
  y      = 0
  width  = 1200
  height = 675

  color = "#000000"
}

layer "image" "dots_left" {
  content = "${file("images/dots_${color}.png")}"
  x       = 0
  y       = 675 - 190
}

layer "image" "dots_right" {
  content = "${file("images/dots_${color}.png")}"
  x       = 220
  y       = 675 - 190
}

layer "image" "lines_mask" {
  content = "${file("images/lines_mask.png")}"
  x       = 0
  y       = 675 - 190
}

layer "image" "lines" {
  content = "${file("images/lines_${color}.png")}"
  x       = 0
  y       = 675 - 190
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = 1070
  y       = 60
  width   = 58
  height  = 62
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 65
  y       = 45
  size    = 76
  font    = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 250
  y       = 45
  size    = 76
  font    = "fonts/klavika/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 280
  y       = 45
  size    = 76
  font    = "fonts/klavika/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 420
  y       = 97
  size    = 24
  font    = "${regular_font}"
}

layer "image" "photo" {
  content = "${file(photo)}"
  x       = 70
  y       = 210
  width = 320
  # width   = 376
  # height  = 353
}

layer "text" "speaker" {
  content = "${speaker}"
  x       = 505-50
  y       = 263-70
  size    = 60
  font    = "${regular_font}"
}

layer "text" "title" {
  content = "${title}"
  width   = 650
  x       = 505-50
  y       = 319-70
  size    = 34
  font    = "${regular_font}"
}

layer "text" "date" {
  content = "${date}"
  x       = 505-50
  y       = 510-33
  size    = 21
  font    = "${bold_font}"
}

layer "text" "url" {
  content = "${url}"
  x       = 505-50
  y       = 540-33
  size    = 21
  font    = "fonts/klavika/regular.ttf"
}