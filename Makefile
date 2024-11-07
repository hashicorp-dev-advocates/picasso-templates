EDITION="EXAMPLE"
DATE="Thursday 1 January 2000"
URL="hashitalks.com"
COLOR="cyan"

examples:
	picasso generate \
		-t hashitalks/social/twitter_card.hcl \
		--var edition=$(EDITION) \
		--var color=$(COLOR) \
		--var date=$(DATE) \
		--var url=$(URL) \
		-o hashitalks/social/examples/twitter_card.png

	picasso generate \
		-t hashitalks/social/email_banner.hcl \
		--var edition=$(EDITION) \
		--var color=$(COLOR) \
		-o hashitalks/social/examples/email_banner.png