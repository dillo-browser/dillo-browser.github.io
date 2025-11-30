all: index.html.asc

%.html.asc: %.html
	rm -f $@
	gpg --batch --armor --output $@ --detach-sig $^
	gpg --verify $@ $^
