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
  default = "fonts/metro/regular.ttf"
}

variable "bold_font" {
  type    = "string"
  default = "fonts/gilmer/bold.ttf"
}

variable "light_font" {
  type    = "string"
  default = "fonts/metro/light.ttf"
}

layer "rectangle" "background" {
  x      = 0
  y      = 0
  width  = 1200
  height = 675

  color = "#000000"
}
layer "image" "background" {
  content = "${file("images_2023/background.png")}"
  x      = 0
  y      = 0
  width  = 1200
  height = 675
}

layer "image" "top" {
  content = "${file("images_2023/top.png")}"
  x       = 725
  y       = 0
  width   = 500
  height  = 262
}

layer "image" "bottom" {
  content = "${file("images_2023/bottom.png")}"
  x       = 745
  y       = 415
  width   = 500
  height  = 262
}

layer "image" "sun" {
  content = "${file("images_2023/sun.png")}"
  x       = 715
  y       = -15
  width   = 500
  height  = 700
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = 40
  y       = 65
  width   = 58
  height  = 62
}

layer "text" "hashi" {
  content = "| Hashi"
  x       = 125
  y       = 45
  size    = 76
  font    = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 345
  y       = 45
  size    = 76
  font    = "fonts/klavika/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 375
  y       = 45
  size    = 76
  font    = "fonts/klavika/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 505
  y       = 97
  size    = 24
  font    = "${regular_font}"
}

layer "image" "photo" {
  content = "${file(photo)}"
  x       = 750
  y       = 140
  width = 400
  # width   = 369
  # height  = 369
}

layer "text" "speaker" {
  content = "${speaker}"
  x       = 40
  y       = 477
  size    = 28
  font    = "fonts/metro/bold.ttf"
}
layer "text" "company" {
  content = "| Monsters, Inc."
  x       = 292
  y       = 477
  size    = 28
  font    = "${regular_font}"
  # content = "| ${company}"
}

layer "text" "title" {
  content = "${title}"
  width   = 650
  x       = 40
  y       = 249
  size    = 45
  font    = "${bold_font}"
}

layer "text" "date" {
  content = "${date}"
  x       = 40
  y       = 517
  size    = 28
  font    = "${regular_font}"
}
layer "text" "time" {
  content = "| 12:00 GMT"
  x       = 275
  y       = 517
  size    = 28
  font    = "${regular_font}"
  # content = "| ${time}"
}