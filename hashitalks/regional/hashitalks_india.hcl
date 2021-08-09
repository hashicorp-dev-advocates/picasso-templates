output "png" {
  width = 1200
  height = 675
}

variable "background" {
  type = "string"
  default = "india/bg.png"
}

variable "photo" {
  type = "string"
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

layer "image" "photo" {
  content = "${file(photo)}"
  x = 70
  y = 210
  width = 352
}

layer "text" "speaker" {
  content = "${speaker}"
  x = 505
  y = 270
  size = 55
  font = "fonts/arial/bold.ttf"
}

layer "text" "title" {
  content = "${title}"
  width = 700
  x = 505
  y = 320
  size = 35
  font = "fonts/arial/regular.ttf"
}
