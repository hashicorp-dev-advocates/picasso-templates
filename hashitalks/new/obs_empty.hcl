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