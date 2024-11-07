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
  default = "fonts/hashicorpsans/regular.ttf"
}

variable "bold_font" {
  type    = "string"
  default = "fonts/metro/bold.ttf"
}

variable "light_font" {
  type    = "string"
  default = "fonts/metro/light.ttf"
}

variable "tagline_offset" {
  type    = "string"
  default = "0"
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

layer "image" "top" {
  content = "${file("images/top.png")}"
  x       = 1050
  y       = 0
  width   = 775
  height  = 406
}

layer "image" "bottom" {
  content = "${file("images/bottom.png")}"
  x       = 1050
  y       = 500
  width   = 775
  height  = 406
}

layer "image" "sun" {
  content = "${file("images/sun.png")}"
  x       = 825
  y       = 0
  width   = 775
  height  = 901
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = "${x_axis}"
  y       = "85"
  width   = 85
  height  = 85
}

layer "text" "hashi" {
  content = "Hash\u0069"
  x       = "${x_axis}"
  y       = "${y_axis}"
  size    = 140
  font    = "${logo_medium_font}"
}

layer "text" "t" {
  content = "T"
  x       = "${x_axis}"+360+10
  y       = "${y_axis}"
  size    = 140
  font    = "${logo_medium_font}"
}

layer "text" "alks" {
  content = "alks"
  x       = "${x_axis}"+415+25
  y       = "${y_axis}"
  size    = 140
  font    = "${logo_medium_font}"
}

layer "text" "edition" {
  content = "${edition}"
  x       = "${x_axis}"+695+25
  y       = "${y_axis}"+75
  size    = 65
  font    = "${logo_light_font}"
}

layer "text" "tagline" {
  content = "${tagline}"
  x       = "${x_axis}"
  y       = "${y_axis}"+150+65
  width   = "750"
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