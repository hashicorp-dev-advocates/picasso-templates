# Picasso templates

This repository holds [picasso](https://github.com/eveld/picasso) templates that can be used to generate image assets.

Some of these templates might require additional assets to be copied into this repository for them to work.
Due to licenses for those assets, they are not included in this repository.

The paths in the templates are computed from the directory the binary is run in.
This means that a template that refers to `images/background.png` and is executed with the command `picasso generate -t hashitalks/regional/banner.hcl` will look for the background at `$PWD/images/background.png`.
