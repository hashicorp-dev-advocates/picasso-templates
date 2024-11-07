# 
# This template generates a banner for the CFP page.
# The required variables for this template are:
# - background
# - edition
# 

output "png" {
  width  = 1600
  height = 468
}

variable "background" {
  type    = "string"
  default = "HT_GeneratorBanner_C2.png"
}

variable "edition" {
    type = "string"
}

layer "image" "background" {
  content = "${file(background)}"
  x       = 0
  y       = 0
}

layer "text" "edition" {
  content = "${edition}"
  x       = 613
  y       = 280
  size    = 40
  font    = "fonts/klavika/KlavikaBasic-Bold.ttf"
}
