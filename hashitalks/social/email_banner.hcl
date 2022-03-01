output "png" {
  width  = 1600
  height = 467
}

variable "logo" {
  type    = "string"
  default = "images/h.png"
}

variable "edition" {
  type = "string"
}


layer "rectangle" "background" {
  x      = 0
  y      = 0
  width  = 1600
  height = 467

  color = "#000000"
}

layer "image" "dots_left" {
  content = "${file("images/dots_${color}.png")}"
  x       = 0
  y       = 467 - 190
}

layer "image" "dots_right" {
  content = "${file("images/dots_${color}.png")}"
  x       = 220
  y       = 467 - 190
}

layer "image" "lines_mask" {
  content = "${file("images/lines_mask.png")}"
  x       = 0
  y       = 467 - 190
}

layer "image" "lines" {
  content = "${file("images/lines_${color}.png")}"
  x       = 0
  y       = 467 - 190
}

layer "image" "logo" {
  content = "${file(logo)}"
  x       = 1600 - 120 - 90
  y       = 95
  width   = 120
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 90
  y       = 70
  size    = 132
  font    = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 410
  y       = 70
  size    = 132
  font    = "fonts/klavika/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 465
  y       = 70
  size    = 132
  font    = "fonts/klavika/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 710
  y       = 153
  size    = 48
  font    = "fonts/klavika/regular.ttf"
}