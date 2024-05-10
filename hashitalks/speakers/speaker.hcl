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
  default = "pink"
}

variable "logo" {
  type    = "string"
  default = "images/h.png"
}

variable "hashitalks" {
  type    = "string"
  default = "images/hashitalks.png"
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

variable "x_axis" {
  type = "string"
  default = "40"
}

variable "y_axis" {
  type = "string"
  default = "85"
}

variable "logo_medium_font" {
  type    = "string"
  default = "fonts/hashicorpsans/medium.ttf"
}

variable "logo_light_font" {
  type    = "string"
  default = "fonts/hashicorpsans/light.ttf"
}

variable "title_bold_font" {
  type    = "string"
  default = "fonts/hashicorpsans/bold.ttf"
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

variable "edition_font" {
  type    = "string"
  default = "fonts/hashicorpsans/light.ttf"
}

layer "rectangle" "background" {
  x      = 0
  y      = 0
  width  = 1200
  height = 675

  color = "#000000"
}
layer "image" "background" {
  content = "${file("images/background_${color}.png")}"
  x      = 0
  y      = 0
  width  = 1200
  height = 675
}

layer "image" "top" {
  content = "${file("images/top.png")}"
  x       = 730
  y       = 0
  width   = 500
  height  = 262
}

layer "image" "bottom" {
  content = "${file("images/bottom.png")}"
  x       = 750
  y       = 415
  width   = 500
  height  = 262
}

layer "image" "sun" {
  content = "${file("images/sun.png")}"
  x       = 700
  y       = -15
  width   = 500
  height  = 700
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = "${x_axis}"
  y       = "${y_axis}"+17
  width   = 48
  height  = 48
}

layer "text" "2_point" {
  content = "|"
  x       = 105+10
  y       = "${y_axis}"+10
  size    = 45
  font    = "fonts/hashicorpsans/light.ttf"
}

layer "image" "hashitalks" {
  content = "${file(hashitalks)}"
  x       = "${x_axis}"+116
  y       = "${y_axis}"+17
  width   = 298-2
  height  = 48-1
}

layer "text" "edition" {
  content = "${edition}"
  x       = 445+25
  y       = "${y_axis}"+18
  size    = 46
  font    = "${edition_font}"
}

layer "image" "photo" {
  content = "${file(photo)}"
  x       = 790
  y       = 165
  width   = 375
  height  = 375
}

layer "text" "title" {
  content = "${title}"
  width   = 600
  x       = "${x_axis}"
  y       = 245
  size    = 42
  font    = "${title_bold_font}"
}

layer "text" "speaker" {
  content = "${speaker}"
  x       = "${x_axis}"
  y       = 477
  size    = 30
  font    = "${bold_font}"
}

layer "text" "date" {
  content = "${date}"
  x       = "${x_axis}"
  y       = 517
  size    = 30
  font    = "${regular_font}"
}