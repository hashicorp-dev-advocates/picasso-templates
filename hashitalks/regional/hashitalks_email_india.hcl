output "png" {
  width  = 1600
  height = 468
}

variable "background" {
  type    = "string"
  default = "HT_GeneratorBanner_C3.png"
}

layer "image" "background" {
  content = "${file(background)}"
  x       = 0
  y       = 0
}

layer "text" "edition" {
  content = "BUILD"
  x       = 683
  y       = 280
  size    = 40
  font    = "fonts/klavika/KlavikaBasic-Bold.ttf"
}
