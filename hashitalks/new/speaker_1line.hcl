# This template generates a speaker card for a talk that has a short title that fits on 1 line.
# The required variables for this template are:
#
# - assets_path
# - color
# - edition
# - speaker
# - title
# - photo
# - date
# - url

output "png" {
  width  = 1200
  height = 675
}

variable "assets_path" {
  type    = "string"
  default = "../../../picasso-assets"
}

variable "color" {
  type    = "string"
  default = "yellow"
}

variable "edition" {
  type = "string"
}

variable "speaker" {
  type = "string"
}

variable "title" {
  type = "string"
}

variable "photo" {
  type = "string"
}

variable "date" {
  type = "string"
}

variable "url" {
  type = "string"
}

layer "rectangle" "background" {
  x      = 0
  y      = 0
  width  = 1200
  height = 675

  color "hex" {
    value = "#000000"
  }
}

layer "image" "dots_left" {
  content = "${file("${assets_path}/images/dots_${color}.png")}"
  x       = 0
  y       = 675 - 190
}

layer "image" "dots_right" {
  content = "${file("${assets_path}/images/dots_${color}.png")}"
  x       = 220
  y       = 675 - 190
}

layer "image" "lines_mask" {
  content = "${file("${assets_path}/images/lines_mask.png")}"
  x       = 0
  y       = 675 - 190
}

layer "image" "lines" {
  content = "${file("${assets_path}/images/lines_${color}.png")}"
  x       = 0
  y       = 675 - 190
}

layer "image" "logo" {
  content = "${file("${assets_path}/images/h.png")}"
  x       = 1070
  y       = 60
  width   = 58
  height  = 62
}

// layer "rectangle" "gradient" {
//     x = 0
//     y = 0
//     width = 1200
//     height = 675
//
//     color "gradient" {
//         start {
//             x = 0
//             y = 0
//         }
//
//         end {
//             x = 0
//             y = 675
//         }
//
//         stop {
//             position = 0
//             value = "#ff0000"
//         }
//
//         stop {
//             position = 1
//             value = "#0000ff"
//         }
//     }
// }

layer "text" "hashi" {
  content = "Hashi"
  x       = 65
  y       = 45
  size    = 76
  font    = "${assets_path}/fonts/klavika/bold.ttf"
}

layer "text" "t" {
  content = "T"
  x       = 250
  y       = 45
  size    = 76
  font    = "${assets_path}/fonts/klavika/light.ttf"
}

layer "text" "alks" {
  content = "alks"
  x       = 280
  y       = 45
  size    = 76
  font    = "${assets_path}/fonts/klavika/light.ttf"
}

layer "text" "edition" {
  content = "${edition}"
  x       = 420
  y       = 97
  size    = 24
  font    = "${assets_path}/fonts/klavika/regular.ttf"
}

layer "image" "photo" {
  content = "${file("./${edition}/${speaker}.jpg")}"
  x       = 70
  y       = 210
  width   = 376
  height  = 353
}

layer "text" "speaker" {
  content = "${speaker}"
  x       = 505
  y       = 263
  size    = 60
  font    = "${assets_path}/fonts/arial/bold.ttf"
}

layer "text" "title" {
  content = "${title}"
  width   = 800
  x       = 505
  y       = 319
  size    = 34
  font    = "${assets_path}/fonts/arial/regular.ttf"
}

layer "text" "date" {
  content = "${date}"
  x       = 505
  y       = 510
  size    = 21
  font    = "${assets_path}/fonts/arial/bold.ttf"
}

layer "text" "url" {
  content = "${url}"
  x       = 505
  y       = 540
  size    = 21
  font    = "${assets_path}/fonts/arial/regular.ttf"
}
