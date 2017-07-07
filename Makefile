.SUFFIXES:
.PHONY: all clean tools lds lds11 debug bankfree
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:


lds_obj := \
wram.o \
main.o \
lib/mobile/main.o \
home.o \
audio.o \
maps.o \
engine/events.o \
engine/credits.o \
data/egg_moves.o \
data/evos_attacks.o \
data/pokedex/entries.o \
misc/crystal_misc.o \
text/common_text.o \
gfx/pics.o

lds-11_obj := $(lds_obj:.o=-11.o)

lds-debug_obj := $(lds_obj:.o=-debug.o)

NAME := pokelds
VERSION := git
TITLE := PM_MORMON
MCODE := PLDS
ROMVERSION := 0x00
FILLER = 0x00

roms := $(NAME)-$(VERSION).gbc $(NAME)-$(VERSION)-11.gbc $(NAME)-$(VERSION)-debug.gbc $(NAME)-$(VERSION)-bankfree.gbc

all: lds freespace

lds: $(NAME)-$(VERSION).gbc

lds11: $(NAME)-$(VERSION)-11.gbc

debug: $(NAME)-$(VERSION)-debug.gbc

bankfree: $(NAME)-$(VERSION)-bankfree.gbc

clean:
	rm -f $(roms) $(lds_obj) $(lds-11_obj) $(lds-debug_obj)
	rm -If *.map *.sym *.sav

tools:
	make -C tools/

cleantools:
	rm -f tools/*.elf

freespace: lds bankfree ; python2 utils/bank-ends.py > utils/bank-ends.txt

%-debug.o: dep = $(shell tools/scan_includes.elf $(@D)/$*.asm)
%-debug.o: %.asm $$(dep)
	rgbasm -D DEBUG -o $@ $<

%-11.o: dep = $(shell tools/scan_includes.elf $(@D)/$*.asm)
%-11.o: %.asm $$(dep)
	rgbasm -D CRYSTAL11 -o $@ $<

%.o: dep = $(shell tools/scan_includes.elf $(@D)/$*.asm)
%.o: %.asm $$(dep)
	rgbasm -o $@ $<

$(NAME)-$(VERSION)-bankfree.gbc: $(lds_obj)
	rgblink -n $(NAME)-bankfree.sym -m $(NAME)-bankfree.map -l $(NAME).ld -p $(FILLER) -o $@ $^
	rgbfix -Cjv -i $(MCODE) -n $(ROMVERSION) -p 0xff -t $(TITLE) -k 01 -l 0x33 -m 0x10 -r 3 $@
	
$(NAME)-$(VERSION)-debug.gbc: $(lds-debug_obj)
	rgblink -n $(NAME)-debug.sym -m $(NAME)-debug.map -l $(NAME).ld -p $(FILLER) -o $@ $^
	rgbfix -Cjv -i $(MCODE) -n $(ROMVERSION) -p 0x00 -t $(TITLE) -k 01 -l 0x33 -m 0x10 -r 3 $@

$(NAME)-$(VERSION)-11.gbc: $(lds-11_obj)
	rgblink -n $(NAME)-11.sym -m $(NAME)-11.map -l $(NAME).ld -p $(FILLER) -o $@ $^
	rgbfix -Cjv -i $(MCODE) -n $(ROMVERSION) -p 0x00 -t $(TITLE) -k 01 -l 0x33 -m 0x10 -r 3 $@

$(NAME)-$(VERSION).gbc: $(lds_obj)
	rgblink -n $(NAME).sym -m $(NAME).map -l $(NAME).ld -p $(FILLER) -o $@ $^
	rgbfix -Cjv -i $(MCODE) -n $(ROMVERSION) -p 0x00 -t $(TITLE) -k 01 -l 0x33 -m 0x10 -r 3 $@


define LOUD
echo "$1"; $1
endef

# For files that the compressor can't match, there will be a .lz file suffixed with the hash of the correct uncompressed file.
# If the hash of the uncompressed file matches, use this .lz instead.
# This allows pngs to be used for compressed graphics and still match.

%.lz: hash = $(shell md5sum $(*D)/$(*F) | sed "s/\(.\{8\}\).*/\1/")
%.lz: %
	$(eval filename := $@.$(hash))
	@if [ -f $(filename) ]; then \
		$(call LOUD, cp $(filename) $@); \
	else \
		$(call LOUD, tools/lzcomp.elf $< $@); \
	fi

# Terrible hacks to match animations. Delete these rules if you don't care about matching.

# Dewgong has an unused tile id in its last frame. The tile itself is missing.
gfx/pics/dewgong/frames.asm: gfx/pics/dewgong/front.animated.tilemap gfx/pics/dewgong/front.dimensions
	tools/pokemon_animation.elf -f $^ > $@
	echo "	db \$$4d" >> $@

# Lugia has two unused tile ids in its last frame. The tiles themselves are missing.
gfx/pics/lugia/frames.asm: gfx/pics/lugia/front.animated.tilemap gfx/pics/lugia/front.dimensions
	tools/pokemon_animation.elf -f $^ > $@
	echo "	db \$$5e, \$$59" >> $@

# Girafarig has a redundant tile after the end. It is used in two frames, so it must be injected into the generated graphics.
# This is more involved, so it's hacked into pokemon_animation_graphics.
gfx/pics/girafarig/front.animated.2bpp: gfx/pics/girafarig/front.2bpp gfx/pics/girafarig/front.dimensions
	tools/pokemon_animation_graphics.elf --girafarig -o $@ $^
gfx/pics/girafarig/front.animated.tilemap: gfx/pics/girafarig/front.2bpp gfx/pics/girafarig/front.dimensions
	tools/pokemon_animation_graphics.elf --girafarig -t $@ $^


# Pokemon pic graphics rules

gfx/pics/%/normal.gbcpal: gfx/pics/%/front.png
	rgbgfx -p $@ $<
gfx/pics/%/normal.pal: gfx/pics/%/normal.gbcpal
	tools/palette.elf -p $< > $@
gfx/pics/%/back.2bpp: gfx/pics/%/back.png
	rgbgfx -h -o $@ $<
gfx/pics/%/bitmask.asm: gfx/pics/%/front.animated.tilemap gfx/pics/%/front.dimensions
	tools/pokemon_animation.elf -b $^ > $@
gfx/pics/%/frames.asm: gfx/pics/%/front.animated.tilemap gfx/pics/%/front.dimensions
	tools/pokemon_animation.elf -f $^ > $@
gfx/pics/%/front.animated.2bpp: gfx/pics/%/front.2bpp gfx/pics/%/front.dimensions
	tools/pokemon_animation_graphics.elf -o $@ $^
gfx/pics/%/front.animated.tilemap: gfx/pics/%/front.2bpp gfx/pics/%/front.dimensions
	tools/pokemon_animation_graphics.elf -t $@ $^
# Don't use -h, pokemon_animation_graphics takes care of it
#gfx/pics/%/front.2bpp: gfx/pics/%/front.png
#	rgbgfx -o $@ $<


# Misc file-specific graphics rules

gfx/shrink%.2bpp: gfx/shrink%.png
	rgbgfx -h -o $@ $<

gfx/trainers/%.2bpp: gfx/trainers/%.png
	rgbgfx -h -o $@ $<


%.bin: ;
%.blk: ;

%.2bpp: %.png
	rgbgfx -o $@ $<
%.1bpp: %.png
	rgbgfx -d1 -o $@ $<
%.tilemap: %.png
	rgbgfx -t $@ $<
%.gbcpal: %.png
	rgbgfx -p $@ $<
%.pal: %.gbcpal
	tools/palette.elf $< > $@
%.dimensions: %.png
	tools/png_dimensions.elf $< $@
