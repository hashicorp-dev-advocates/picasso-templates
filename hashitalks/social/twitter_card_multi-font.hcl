output "png" {
  width  = 1600
  height = 900
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

variable "title" {
  type = "string"
}

variable "date" {
  type = "string"
}

variable "url" {
  type = "string"
}

variable "x_axis" {
  type = "string"
  default = "75"
}

variable "y_axis" {
  type = "string"
  default = "260"
}

variable "logo_medium_font" {
  type    = "string"
  default = "fonts/hashicorpsans/medium.ttf"
}

variable "logo_light_font" {
  type    = "string"
  default = "fonts/hashicorpsans/light.ttf"
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
  width  = 1600
  height = 900

  color = "#000000"
}

layer "image" "background" {
  content = "${file("images/background_${color}.png")}"
  x      = 0
  y      = 0
  width  = 1600
  height = 900
}

layer "image" "sun" {
  content = "${file("images/sun.png")}"
  x       = -10
  y       = 0
  width   = 1620
  height  = 900
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = "${x_axis}"
  y       = "85"
  width   = 85
  height  = 85
}

layer "image" "hashitalks" {
  content = "${file(hashitalks)}"
  x       = "${x_axis}"
  y       = "${y_axis}"+36
  width   = 705-75
  height  = 106-11
}

layer "text" "edition" {
  content = "${edition}"
  x       = "${x_axis}"+732-75
  y       = "${y_axis}"+45-1
  size    = 95-10
  font    = "${edition_font}"
}

layer "text" "tagline" {
  content = "${tagline}"
  x       = "${x_axis}"
  y       = "${y_axis}"+150+65
  width   = "1500"
  size    = 45+15
  font    = "${logo_medium_font}"
}

layer "text" "url" {
  content = "${url}"
  x       = "${x_axis}"
  y       = "${y_axis}"+500
  size    = 45
  font    = "${bold_font}"
}

layer "text" "date" {
  content = "${date}"
  x       = "${x_axis}"
  y       = "${y_axis}"+175
  size    = 45
  font    = "${regular_font}"
}