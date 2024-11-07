output "png" {
  width  = 1600
  height = 467
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

layer "image" "background" {
  content = "${file("images/background_${color}.png")}"
  x      = 0
  y      = 0
  width  = 1600
  height = 467
}

# layer "image" "top" {
#  content = "${file("images/top.png")}"
#  x       = 1150
#  y       = 0
#  width   = 540
#  height  = 283
# }

layer "image" "bottom" {
  content = "${file("images/bottom.png")}"
  x       = 1150
  y       = 250
  width   = 540
  height  = 283
}

layer "image" "sun" {
  content = "${file("images/sun.png")}"
  x       = 1110
  y       = 0
  width   = 490
  height  = 570
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = 65
  y       = 50
  width   = 65
}

layer "image" "hashitalks" {
  content = "${file(hashitalks)}"
  x       = 300
  y       = 120+35
  width   = 660
  height  = 100
}

layer "text" "edition" {
  content = "${edition}"
  x       = 300 + "${logo_offset}"
  y       = 253
  size    = 60
  font    = "${edition_font}"
}