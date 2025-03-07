	db DEX_HELPME ; pokedex id

	db 58,  58,  58,  58,  58
	;   hp  atk  def  spd  spc

	db BIRD, POISON ; type
	db 255 ; catch rate
	db 219 ; base exp

	INCBIN "gfx/pokemon/front/helpme.pic", 0, 1 ; sprite dimensions
	dw HelpmePicFront, HelpmePicBack

	db WATER_GUN, EMBER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm HURRICANE,   \
	     TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     COUNTER, \
	     SOLARBEAM,    DRAGONBREATH,  THUNDERBOLT,  THUNDER,      \
	      \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
	     SELFDESTRUCT, FIRE_BLAST,   SWIFT,           \
	     REST,         THUNDER_WAVE, \
	     EXPLOSION,    TRI_ATTACK,   SUBSTITUTE,   \
	     SURF,         STRENGTH,     FLASH
	; end

	db BANK(HelpmePicFront)
	assert BANK(HelpmePicFront) == BANK(HelpmePicBack)
