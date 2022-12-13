.PHONY: generate examples build-miniaudio

default: generate

generate:
	cp miniaudio/miniaudio.h miniaudio.c
	gcc -DMINIAUDIO_IMPLEMENTATION -O2 -shared -fPIC -o libminiaudio.so miniaudio.c
	jai generate.jai

build-miniaudio:
	git submodule sync --recursive
