picasso {
  version = "v0.2.0"
}

output "png" {
  width  = 1920
  height = 1080
}

variable "logo" {
  type    = "string"
  default = "images/h.png"
}

variable "edition" {
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

layer "image" "logo" {
  content = "${file(logo)}"
  x       = 1920 - 48 - 64
  y       = 34
  height  = 64
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 65
  y       = 22
  size    = 76
  font    = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 250
  y       = 22
  size    = 76
  font    = "fonts/klavika/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 280
  y       = 22
  size    = 76
  font    = "fonts/klavika/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 420
  y       = 74
  size    = 24
  font    = "${regular_font}"
}