output "png" {
	width = 1600
	height = 900
}

variable "background" {
    type = "string"
    default = "images/card_background_1600x900.png"
}

variable "tagline" {
    type = "string"
    default = "HashiTalks tagline"
}

variable "edition" {
    type = "string"
    default = "Edition"
}

layer "image" "background" {
    content = "${file(background)}"
    x = 0
    y = 0
}

layer "text" "hashi" {
	content = "Hashi"
	x = 250
	y = 350
	size = 128
	font = "fonts/klavika/bold.ttf"
}

layer "text" "t" {
	content = "T"
	x = 560
	y = 350
	size = 128
	font = "fonts/klavika/light.ttf"
}

layer "text" "alks_edition" {
	content = "alks: ${edition}"
	x = 615
	y = 350
	size = 128
	font = "fonts/klavika/light.ttf"
}

layer "text" "tagline" {
    content = "${tagline}"
    x = 250
	y = 530
	size = 56
	font = "fonts/arial/arial.ttf"
}