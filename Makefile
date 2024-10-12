PREFIX ?= /usr/local/bin

SCRIPTS = lrk-create lrk-findby lrk-get lrk-list

all: lrk-install
lrk-install: $(SCRIPTS)
	install -m 755 -t $(PREFIX) $^

.PHONY: all
