picasso {
    version = "v0.2.0"
}

output "png" {
	width = 1920
	height = 1080
}

variable "color" {
    type = "string"
    default = "yellow"
}

variable "logo" {
    type = "string"
    default = "images/h.png"
}

variable "edition" {
    type = "string"
}

layer "rectangle" "background" {
    x = 0
    y = 0
    width = 1920
    height = 1080
    color = "#000000"
}

layer "image" "dots_left" {
    content = "${file("images/dots_${color}.png")}"
    x = 0
    y = 1080 - (300)
    height = 300
}

layer "image" "dots_right" {
    content = "${file("images/dots_${color}.png")}"
    x = 340
    y = 1080 - (300)
    height = 300
}

layer "image" "lines_mask" {
    content = "${file("images/lines_mask.png")}"
    x = 0 + 3
    y = 1080 - (300)
    height = 300
}

layer "image" "lines" {
    content = "${file("images/lines_${color}.png")}"
    x = 0
    y = 1080 - (300)
    height = 300
}

layer "image" "logo" {
    content = "${file(logo)}"
    x = 490
    y = 385
    width = 120
}

layer "text" "hashi" {
	content = "Hashi"
	x = 630
	y = 360
	size = 132
	font = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
	content = "T"
	x = 950
	y = 360
	size = 132
	font = "fonts/klavika/light.ttf"
}

layer "text" "alks" {
	content = "alks"
	x = 1005
	y = 360
	size = 132
	font = "fonts/klavika/light.ttf"
}

layer "text" "edition" {
	content = "${edition}"
	x = 1250
	y = 443
	size = 48
	font = "fonts/klavika/regular.ttf"
}