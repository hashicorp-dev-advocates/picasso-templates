output "png" {
  width  = 600
  height = 200
}

variable "background" {
  type    = "string"
  default = "images/banner_background_1600x467.png"
}

layer "image" "background" {
  content = "${file(background)}"
  x       = 0
  y       = 0
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 30
  y       = 60
  size    = 60
  font    = "fonts/klavika/KlavikaBasic-Bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 180
  y       = 60
  size    = 60
  font    = "fonts/klavika/KlavikaBasic-Light.ttf"
}

layer "text" "alks_edition" {
  content = "alks: Build"
  x       = 200
  y       = 60
  size    = 60
  font    = "fonts/klavika/KlavikaBasic-Light.ttf"
}
