picasso {
  version = "v0.2.0"
}

output "png" {
  width  = 1920
  height = 1080
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

variable "x_axis" {
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
  width  = 1920
  height = 1080
  color  = "#000000"
}

layer "image" "background" {
  content = "${file("images/background_${color}.png")}"
  x      = 0
  y      = 0
  width  = 1920
  height = 1080
}

layer "image" "top" {
  content = "${file("images/top.png")}"
  x       = 1325
  y       = 0
  width   = 775
  height  = 406
}

layer "image" "bottom" {
  content = "${file("images/bottom.png")}"
  x       = 1325
  y       = 675
  width   = 775
  height  = 406
}

layer "image" "sun" {
  content = "${file("images/sun.png")}"
  x       = 975
  y       = -20
  width   = 946
  height  = 1100
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = "${x_axis}"
  y       = "85"
  width   = 85
  height  = 85
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 525
  y       = 425
  size    = 132
  font    = "fonts/hashicorpsans/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 845
  y       = 425
  size    = 132
  font    = "fonts/hashicorpsans/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 900
  y       = 425
  size    = 132
  font    = "fonts/hashicorpsans/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 1145
  y       = 508
  size    = 48
  font    = "${regular_font}"
}