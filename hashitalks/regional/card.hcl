# 
# This template generates a twitter card for the event.
# The required variables for this template are:
# - edition
# - tagline
# 

output "png" {
	width = 1600
	height = 900
}

variable "background" {
    type = "string"
    default = "images/background_1600x900.png"
}

variable "edition" {
    type = "string"
}

variable "tagline" {
    type = "string"
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
	font = "fonts/arial/regular.ttf"
}