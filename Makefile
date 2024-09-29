PROGRAMS = $(shell ls -d */)

.PHONY: all $(PROGRAMS)

all: $(PROGRAMS)

$(PROGRAMS):
	stow --target=$(HOME) --verbose --adopt --dotfiles $@
