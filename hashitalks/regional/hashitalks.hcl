output "png" {
  width  = 1600
  height = 467
}

variable "background" {
  type    = "string"
  default = "images/banner_background_1600x467.png"
}

variable "tagline" {
  type    = "string"
  default = "29 Juli 2021"
  #default = "April 22 at 12:00 AEST. Sign up via hashi.co/htanz"
  #default = "https://events.hashicorp.com/hashitalksanz"
}

variable "edition" {
  type    = "string"
  default = "Indonesia"
}

layer "image" "background" {
  content = "${file(background)}"
  x       = 0
  y       = 0
}

layer "text" "hashi" {
  content = "Hashi"
  x       = 210
  y       = 200
  size    = 80
  font    = "fonts/klavika/KlavikaBasic-Bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 405
  y       = 200
  size    = 80
  font    = "fonts/klavika/KlavikaBasic-Light.ttf"
}

layer "text" "alks_edition" {
  content = "alks: ${edition}"
  x       = 440
  y       = 200
  size    = 80
  font    = "fonts/klavika/KlavikaBasic-Light.ttf"
}

 layer "text" "tagline" {
   content = "${tagline}"
   x = 210
   y = 330
   size = 48
   font = "fonts/arial/regular.ttf"
 }

