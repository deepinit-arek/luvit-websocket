CFLAGS   := $(shell luvit --cflags)

all: build/hybi10.luvit

build/hybi10.luvit: src/hybi10.c
	mkdir -p build
	gcc -shared -g $(CFLAGS) -o $@ $^

test:
	checkit tests/10.lua tests/76.lua

clean:
	rm -fr build

.PHONY: all clean test
.SILENT:
