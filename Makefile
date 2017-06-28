.SUFFIXES:
.PHONY: all clean tools compare crystal crystal11
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:


crystal_obj := \
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

crystal11_obj := $(crystal_obj:.o=11.o)


roms := pokecrystal.gbc pokecrystal11.gbc

all: crystal
crystal: pokecrystal.gbc
crystal11: pokecrystal11.gbc

clean:
	rm -f $(roms) $(crystal_obj) $(crystal11_obj) $(roms:.gbc=.map) $(roms:.gbc=.sym) $(roms:.gbc=.sav)

tools:
	make -C tools/

%11.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
%11.o: %.asm $$(dep)
	rgbasm -D CRYSTAL11 -o $@ $<

%.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
%.o: %.asm $$(dep)
	rgbasm -o $@ $<

pokecrystal11.gbc: $(crystal11_obj)
	rgblink -n pokecrystal11.sym -m pokecrystal11.map -l pokecrystal.ld -o $@ $^
	rgbfix -Cjv -i BYTE -k 01 -l 0x33 -m 0x10 -n 1 -p 0 -r 3 -t PM_MORMON $@

pokecrystal.gbc: $(crystal_obj)
	rgblink -n pokecrystal.sym -m pokecrystal.map -l pokecrystal.ld -o $@ $^
	rgbfix -Cjv -i BYTE -k 01 -l 0x33 -m 0x10 -p 0 -r 3 -t PM_MORMON $@


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
		$(call LOUD, tools/lzcomp $< $@); \
	fi

# Terrible hacks to match animations. Delete these rules if you don't care about matching.

# Dewgong has an unused tile id in its last frame. The tile itself is missing.
gfx/pics/dewgong/frames.asm: gfx/pics/dewgong/front.animated.tilemap gfx/pics/dewgong/front.dimensions
	tools/pokemon_animation -f $^ > $@
	echo "	db \$$4d" >> $@

# Lugia has two unused tile ids in its last frame. The tiles themselves are missing.
gfx/pics/lugia/frames.asm: gfx/pics/lugia/front.animated.tilemap gfx/pics/lugia/front.dimensions
	tools/pokemon_animation -f $^ > $@
	echo "	db \$$5e, \$$59" >> $@

# Girafarig has a redundant tile after the end. It is used in two frames, so it must be injected into the generated graphics.
# This is more involved, so it's hacked into pokemon_animation_graphics.
gfx/pics/girafarig/front.animated.2bpp: gfx/pics/girafarig/front.2bpp gfx/pics/girafarig/front.dimensions
	tools/pokemon_animation_graphics --girafarig -o $@ $^
gfx/pics/girafarig/front.animated.tilemap: gfx/pics/girafarig/front.2bpp gfx/pics/girafarig/front.dimensions
	tools/pokemon_animation_graphics --girafarig -t $@ $^


# Pokemon pic graphics rules

gfx/pics/%/normal.gbcpal: gfx/pics/%/front.png
	rgbgfx -p $@ $<
gfx/pics/%/normal.pal: gfx/pics/%/normal.gbcpal
	tools/palette -p $< > $@
gfx/pics/%/back.2bpp: gfx/pics/%/back.png
	rgbgfx -h -o $@ $<
gfx/pics/%/bitmask.asm: gfx/pics/%/front.animated.tilemap gfx/pics/%/front.dimensions
	tools/pokemon_animation -b $^ > $@
gfx/pics/%/frames.asm: gfx/pics/%/front.animated.tilemap gfx/pics/%/front.dimensions
	tools/pokemon_animation -f $^ > $@
gfx/pics/%/front.animated.2bpp: gfx/pics/%/front.2bpp gfx/pics/%/front.dimensions
	tools/pokemon_animation_graphics -o $@ $^
gfx/pics/%/front.animated.tilemap: gfx/pics/%/front.2bpp gfx/pics/%/front.dimensions
	tools/pokemon_animation_graphics -t $@ $^
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
	tools/palette $< > $@
%.dimensions: %.png
	tools/png_dimensions $< $@
