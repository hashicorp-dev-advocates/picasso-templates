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
  x       = 1500
  y       = 0
  width   = 500
  height  = 262
}

layer "image" "bottom" {
  content = "${file("images/bottom.png")}"
  x       = 1500
  y       = 1000
  width   = 500
  height  = 262
}

layer "image" "sun" {
  content = "${file("images/sun.png")}"
  x       = 1500
  y       = -100
  width   = 540
  height  = 628
}