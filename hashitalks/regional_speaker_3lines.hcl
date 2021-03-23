output "png" {
	width = 1600
	height = 900
}

variable "background" {
    type = "string"
    default = "images/card_background_1600x900.png"
}

variable "logo" {
    type = "string"
    default = "images/h.png"
}

variable "region" {
    type = "string"
    default = "Vietnam"
}

variable "speaker" {
    type = "string"
    default = "John Doe"
}

variable "title" {
    type = "string"
    default = "My awesome talk with a very long title that should wrap"
}

variable "photo" {
    type = "string"
    default = "images/avatar.jpg"
}

variable "date" {
    type = "string"
    default = "Thursday 30 April"
}

variable "url" {
    type = "string"
    default = "hashi.co/hashitalksvietnam"
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
	font = "fonts/klavika/KlavikaBasic-Bold.ttf"
}

layer "text" "t" {
	content = "T"
	x = 460
	y = 150
	size = 128
	font = "fonts/klavika/KlavikaBasic-Light.ttf"
}

layer "text" "alks_region" {
	content = "alks: ${region}"
	x = 515
	y = 150
	size = 128
	font = "fonts/klavika/KlavikaBasic-Light.ttf"
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
	y = 645
	size = 32
	font = "fonts/arial/light.ttf"
}

layer "text" "url" {
    content = "${url}"
    x = 550
	y = 685
	size = 32
	font = "fonts/arial/bold.ttf"
}