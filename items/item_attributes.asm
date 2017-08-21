item_attribute: MACRO
; price, held effect, parameter, property, pocket, field menu, battle menu
	dw \1
	db \2, \3, \4, \5
	dn \6, \7
ENDM

Item1Attributes:

; MASTER BALL
	item_attribute     0, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

Item2Attributes:

; ULTRA BALL
	item_attribute  1200, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; BRIGHTPOWDER
	item_attribute    10, HELD_BRIGHTPOWDER,   20,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; GREAT BALL
	item_attribute   600, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; # BALL
	item_attribute   200, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BICYCLE
	item_attribute     0, 0,                 0,               CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; MOON STONE
	item_attribute     0, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; ANTIDOTE
	item_attribute   100, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; BURN HEAL
	item_attribute   250, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; ICE HEAL
	item_attribute   250, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; AWAKENING
	item_attribute   250, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; PARLYZ HEAL
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; FULL RESTORE
	item_attribute  3000, 0,                -1,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; MAX POTION
	item_attribute  2500, 0,                -1,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; HYPER POTION
	item_attribute  1200, 0,               200,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; SUPER POTION
	item_attribute   700, 0,                50,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; POTION
	item_attribute   300, 0,                20,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; ESCAPE ROPE
	item_attribute   550, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; REPEL
	item_attribute   350, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_CURRENT, ITEMMENU_NoUSE

; MAX ELIXER
	item_attribute  4500, 0,                -1,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; FIRE STONE
	item_attribute  2100, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; THUNDERSTONE
	item_attribute  2100, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; WATER STONE
	item_attribute  2100, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; HP UP
	item_attribute  9800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; PROTEIN
	item_attribute  9800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; IRON
	item_attribute  9800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; CARBOS
	item_attribute  9800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; LUCKY PUNCH
	item_attribute    10, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; CALCIUM
	item_attribute  9800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; RARE CANDY
	item_attribute  4800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; X ACCURACY
	item_attribute   950, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; LEAF STONE
	item_attribute  2100, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; METAL POWDER
	item_attribute    10, HELD_METAL_POWDER,   10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; NUGGET
	item_attribute 10000, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; # DOLL
	item_attribute  1000, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; FULL HEAL
	item_attribute   600, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; REVIVE
	item_attribute  1500, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; MAX REVIVE
	item_attribute  4000, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; GUARD SPEC.
	item_attribute   700, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; SUPER REPEL
	item_attribute   500, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_CURRENT, ITEMMENU_NoUSE

; MAX REPEL
	item_attribute   700, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_CURRENT, ITEMMENU_NoUSE

; DIRE HIT
	item_attribute   650, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; FRESH WATER
	item_attribute   200, 0,                50,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; SODA POP
	item_attribute   300, 0,                60,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; LEMONADE
	item_attribute   350, 0,                80,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; X ATTACK
	item_attribute   500, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; X DEFEND
	item_attribute   550, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; X SPEED
	item_attribute   350, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; X SPECIAL
	item_attribute   350, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; COIN CASE
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CURRENT, ITEMMENU_NoUSE

; ITEMFINDER
	item_attribute     0, 0,                 0,               CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; EXP.SHARE
	item_attribute  3000, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; OLD ROD
	item_attribute     0, 0,                 0,               CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; GOOD ROD
	item_attribute     0, 0,                 0,               CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; SILVER LEAF
	item_attribute  1000, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SUPER ROD
	item_attribute     0, 0,                 0,               CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; PP UP
	item_attribute  9800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; ETHER
	item_attribute  1200, 0,                10,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; MAX ETHER
	item_attribute  2000, 0,                -1,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; ELIXER
	item_attribute  3000, 0,                10,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; RED SCALE
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SECRETPOTION
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; S.S.TICKET
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; MYSTERY EGG
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; CLEAR BELL
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SILVER WING
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; MOOMOO MILK
	item_attribute   500, 0,               100,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; QUICK CLAW
	item_attribute   100, HELD_QUICK_CLAW,     60,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; PSNCUREBERRY
	item_attribute    10, HELD_HEAL_POISON,     0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; GOLD LEAF
	item_attribute  1000, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SOFT SAND
	item_attribute   100, HELD_GROUND_BOOST,   10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SHARP BEAK
	item_attribute   100, HELD_FLYING_BOOST,   10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; PRZCUREBERRY
	item_attribute    10, HELD_HEAL_PARALYZE,   0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; BURNT BERRY
	item_attribute    10, HELD_HEAL_FREEZE,     0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; ICE BERRY
	item_attribute    10, HELD_HEAL_BURN,       0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; POISON BARB
	item_attribute   100, HELD_POISON_BOOST,   10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; KING'S ROCK
	item_attribute   100, HELD_TRADE_EVOLVE,   30,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BITTER BERRY
	item_attribute    10, HELD_HEAL_CONFUSION,  0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_PARTY

; MINT BERRY
	item_attribute    10, HELD_HEAL_SLEEP,      0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; RED APRICORN
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TINYMUSHROOM
	item_attribute   500, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BIG MUSHROOM
	item_attribute  5000, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SILVERPOWDER
	item_attribute   100, HELD_BUG_BOOST,      10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BLU APRICORN
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; AMULET COIN
	item_attribute   100, HELD_AMULET_COIN,    10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; YLW APRICORN
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; GRN APRICORN
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; CLEANSE TAG
	item_attribute   200, HELD_CLEANSE_TAG,     0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; MYSTIC WATER
	item_attribute   100, HELD_WATER_BOOST,    10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TWISTEDSPOON
	item_attribute   100, HELD_PSYCHIC_BOOST,  10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; WHT APRICORN
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BLACKBELT
	item_attribute   100, HELD_FIGHTING_BOOST, 10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BLK APRICORN
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; PNK APRICORN
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BLACKGLASSES
	item_attribute   100, HELD_DARK_BOOST,     10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SLOWPOKETAIL
	item_attribute  9800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; PINK BOW
	item_attribute   100, HELD_NoRMAL_BOOST,   10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; STICK
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SMOKE BALL
	item_attribute   200, HELD_ESCAPE,          0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; NEVERMELTICE
	item_attribute   100, HELD_ICE_BOOST,      10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; MAGNET
	item_attribute   100, HELD_ELECTRIC_BOOST, 10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; MIRACLEBERRY
	item_attribute    10, HELD_HEAL_STATUS,     0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; PEARL
	item_attribute  1400, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BIG PEARL
	item_attribute  7500, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; EVERSTONE
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SPELL TAG
	item_attribute   100, HELD_GHOST_BOOST,    10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; RAGECANDYBAR
	item_attribute   300, 0,                20,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; GS BALL
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BLUE CARD
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CURRENT, ITEMMENU_NoUSE

; MIRACLE SEED
	item_attribute   100, HELD_GRASS_BOOST,    10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; THICK CLUB
	item_attribute   500, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; FOCUS BAND
	item_attribute   200, HELD_FOCUS_BAND,     30,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; ENERGYPOWDER
	item_attribute   500, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; ENERGY ROOT
	item_attribute   800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; HEAL POWDER
	item_attribute   450, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; REVIVAL HERB
	item_attribute  2800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; HARD STONE
	item_attribute   100, HELD_ROCK_BOOST,     10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; LUCKY EGG
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; CARD KEY
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; MACHINE PART
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; EGG TICKET
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; LOST ITEM
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; STARDUST
	item_attribute  2000, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; STAR PIECE
	item_attribute  9800, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BASEMENT KEY
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; PASS
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; CHARCOAL
	item_attribute  9800, HELD_FIRE_BOOST,     10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BERRY JUICE
	item_attribute   100, HELD_BERRY,          20,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; SCOPE LENS
	item_attribute   200, HELD_CRITICAL_UP,     0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; METAL COAT
	item_attribute   100, HELD_STEEL_BOOST,    10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; DRAGON FANG
	item_attribute   100, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; LEFTOVERS
	item_attribute   200, HELD_LEFTOVERS,      10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; MYSTERYBERRY
	item_attribute    10, HELD_RESTORE_PP,     -1,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; DRAGON SCALE
	item_attribute  2100, HELD_DRAGON_BOOST,   10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BERSERK GENE
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SACRED ASH
	item_attribute   200, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; HEAVY BALL
	item_attribute   150, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; FLOWER MAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; LEVEL BALL
	item_attribute   150, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; LURE BALL
	item_attribute   150, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; FAST BALL
	item_attribute   150, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; LIGHT BALL
	item_attribute   100, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; FRIEND BALL
	item_attribute   150, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; MOON BALL
	item_attribute   150, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; LOVE BALL
	item_attribute   150, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; NoRMAL BOX
	item_attribute    10, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_CURRENT, ITEMMENU_NoUSE

; GORGEOUS BOX
	item_attribute    10, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_CURRENT, ITEMMENU_NoUSE

; SUN STONE
	item_attribute  2100, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_NoUSE

; POLKADOT BOW
	item_attribute   100, HELD_NoRMAL_BOOST,   10,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; UP-GRADE
	item_attribute  2100, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BERRY
	item_attribute    10, HELD_BERRY,          10,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; GOLD BERRY
	item_attribute    10, HELD_BERRY,          30,             CANT_SELECT, ITEM,     ITEMMENU_PARTY,   ITEMMENU_PARTY

; SQUIRTBOTTLE
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; PARK BALL
	item_attribute     0, 0,                 0,             CANT_SELECT, BALL,     ITEMMENU_NoUSE,   ITEMMENU_CLOSE

; RAINBOW WING
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BRICK PIECE
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; SURF MAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; LITEBLUEMAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; PORTRAITMAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; LOVELY MAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; EON MAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; MORPH MAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; BLUESKY MAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; MUSIC MAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; MIRAGE MAIL
	item_attribute    50, 0,                 0,             CANT_SELECT, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TM01
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM02
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM03
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM04
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TM05
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM06
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM07
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM08
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM09
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM10
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM11
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM12
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM13
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM14
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM15
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM16
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM17
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM18
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM19
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM20
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM21
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM22
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM23
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM24
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM25
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM26
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM27
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM28
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TM29
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM30
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM31
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM32
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM33
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM34
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM35
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM36
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM37
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM38
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM39
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM40
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM41
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM42
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM43
	item_attribute  1000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM44
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM45
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM46
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM47
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM48
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM49
	item_attribute  3000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TM50
	item_attribute  2000, 0,                 0,             CANT_SELECT, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; HM01
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; HM02
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; HM03
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; HM04
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; HM05
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; HM06
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; HM07
	item_attribute     0, 0,                 0, CANT_SELECT | CANT_TOSS, TM_HM,    ITEMMENU_PARTY,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; TERU-SAMA
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE

; ?
	item_attribute $9999, 0,                 0,                       0, ITEM,     ITEMMENU_NoUSE,   ITEMMENU_NoUSE
