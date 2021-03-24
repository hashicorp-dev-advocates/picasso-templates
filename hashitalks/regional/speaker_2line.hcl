#
# This template generates a speaker card for a talk that has a medium long title that fits on 2 line.
# The required variables for this template are:
# - edition
# - speaker
# - title
# - photo
# - date
# - url
# 

output "png" {
	width = 1600
	height = 900
}

variable "background" {
    type = "string"
    default = "images/background_1600x900.png"
}

variable "logo" {
    type = "string"
    default = "images/h.png"
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

layer "image" "background" {
    content = "${file(background)}"
    x = 0
    y = 0
}

layer "image" "logo" {
    content = "${file(logo)}"
    x = 1600 - 200
    y = 900 - 200
}

layer "text" "hashi" {
	content = "Hashi"
	x = 150
	y = 150
	size = 128
	font = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
	content = "T"
	x = 460
	y = 150
	size = 128
	font = "fonts/klavika/light.ttf"
}

layer "text" "alks_edition" {
	content = "alks: ${edition}"
	x = 515
	y = 150
	size = 128
	font = "fonts/klavika/light.ttf"
}

layer "image" "photo" {
    content = "${file(photo)}"
    x = 160
    y = 350
    width = 320
}

layer "text" "speaker" {
    content = "${speaker}"
    x = 550
	y = 330
	size = 72
	font = "fonts/arial/bold.ttf"
}

layer "text" "title" {
    content = "${title}"
    width = 900
    x = 550
	y = 395
	size = 52
	font = "fonts/arial/regular.ttf"
}

layer "text" "date" {
    content = "${date}"
    x = 550
	y = 585
	size = 32
	font = "fonts/arial/light.ttf"
}

layer "text" "url" {
    content = "${url}"
    x = 550
	y = 625
	size = 32
	font = "fonts/arial/bold.ttf"
}