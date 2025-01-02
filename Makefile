# var
MODULE = $(notdir $(CURDIR))

# dirs
CWD = $(CURDIR)

# tool
CURL = curl -L -o
CF   = clang-format -style=file -i

# src
C += $(wildcard src/*.c*)
H += $(wildcard inc/*.h*)

# all
.PHONY: all run
all: bin/$(MODULE)
run: bin/$(MODULE)
	$^

# format
.PHONY: format
format: tmp/format_cpp tmp/format_ml
tmp/format_cpp:
	touch $@
tmp/format_ml:
	touch $@
