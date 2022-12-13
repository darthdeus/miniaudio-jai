.PHONY: default generate examples build-miniaudio

default: examples

examples:
	jai examples/simple_playback.jai
	./examples/simple_playback

generate:
	cp miniaudio/miniaudio.h miniaudio.c
	gcc -DMINIAUDIO_IMPLEMENTATION -O2 -shared -fPIC -o libminiaudio.so miniaudio.c
	jai generate.jai

build-miniaudio:
	git submodule sync --recursive
