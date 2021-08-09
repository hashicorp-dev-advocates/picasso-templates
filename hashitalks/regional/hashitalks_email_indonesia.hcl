output "png" {
  width  = 1600
  height = 468
}

variable "background" {
  type    = "string"
  default = "HT_GeneratorBanner_C1.png"
}

layer "image" "background" {
  content = "${file(background)}"
  x       = 0
  y       = 0
}

layer "text" "edition" {
  content = "Indonesia"
  x       = 613
  y       = 280
  size    = 40
  font    = "fonts/klavika/KlavikaBasic-Bold.ttf"
}
