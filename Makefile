# var
MODULE = $(notdir $(CURDIR))

# dirs
CWD = $(CURDIR)
BIN = $(CWD)/bin
INC = $(CWD)/inc
TMP = $(CWD)/tmp

# tool
CURL = curl -L -o
CF   = clang-format -style=file -i

# src
C += $(wildcard src/*.c*)
H += $(wildcard inc/*.h*)
F += $(wildcard lib/*.ini)

# cfg
CFLAGS += -I$(INC) -I$(TMP) -O0 -ggdb

# all
.PHONY: all run
all: $(BIN)/$(MODULE) $(F)
run: $(BIN)/$(MODULE) $(F)
	$^

# format
.PHONY: format
format: tmp/format_cpp tmp/format_ml
tmp/format_cpp: $(C) $(H)
	$(CF) $? && touch $@
tmp/format_ml:
	dune fmt && touch $@

# rule
$(BIN)/$(MODULE): $(C) $(H)
	$(CXX) $(CFLAGS) -o $@ $(C) $(L)

# install
.PHONY: install update ref gz
install: ref gz
	make update
update:
	sudo apt update
	sudo apt install -uy `cat apt.$(shell lsb_release -si)`
	opam install . --deps-only
ref:
gz:
