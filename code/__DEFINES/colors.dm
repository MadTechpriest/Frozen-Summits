// This is eventually for wjohn to add more color standardization stuff like I keep asking him >:(

#define COLOR_INPUT_DISABLED "#000000"
#define COLOR_INPUT_ENABLED "#231d1d"

#define COLOR_DARKMODE_BACKGROUND "#202020"
#define COLOR_DARKMODE_DARKBACKGROUND "#171717"
#define COLOR_DARKMODE_TEXT "#a4bad6"

#define COLOR_WHITE            "#EEEEEE"
#define COLOR_SILVER           "#C0C0C0"
#define COLOR_GRAY             "#808080"
#define COLOR_FLOORTILE_GRAY   "#8D8B8B"
#define COLOR_ALMOST_BLACK	   "#333333"
#define COLOR_BLACK            "#000000"
#define COLOR_RED              "#FF0000"
#define COLOR_RED_LIGHT        "#FF3333"
#define COLOR_MAROON           "#800000"
#define COLOR_YELLOW           "#FFFF00"
#define COLOR_OLIVE            "#808000"
#define COLOR_LIME             "#32CD32"
#define COLOR_GREEN            "#008000"
#define COLOR_CYAN             "#00FFFF"
#define COLOR_TEAL             "#008080"
#define COLOR_BLUE             "#0000FF"
#define COLOR_BLUE_LIGHT       "#33CCFF"
#define COLOR_NAVY             "#000080"
#define COLOR_PINK             "#FFC0CB"
#define COLOR_MAGENTA          "#FF00FF"
#define COLOR_PURPLE           "#800080"
#define COLOR_ORANGE           "#FF9900"
#define COLOR_BEIGE            "#CEB689"
#define COLOR_BLUE_GRAY        "#75A2BB"
#define COLOR_BROWN            "#BA9F6D"
#define COLOR_DARK_BROWN       "#997C4F"
#define COLOR_DARK_ORANGE      "#C3630C"
#define COLOR_GREEN_GRAY       "#99BB76"
#define COLOR_RED_GRAY         "#B4696A"
#define COLOR_PALE_BLUE_GRAY   "#98C5DF"
#define COLOR_PALE_GREEN_GRAY  "#B7D993"
#define COLOR_PALE_RED_GRAY    "#D59998"
#define COLOR_PALE_PURPLE_GRAY "#CBB1CA"
#define COLOR_PURPLE_GRAY      "#AE8CA8"

//Color defines used by the assembly detailer.
#define COLOR_ASSEMBLY_BLACK   "#545454"
#define COLOR_ASSEMBLY_BGRAY   "#9497AB"
#define COLOR_ASSEMBLY_WHITE   "#E2E2E2"
#define COLOR_ASSEMBLY_RED     "#CC4242"
#define COLOR_ASSEMBLY_ORANGE  "#E39751"
#define COLOR_ASSEMBLY_BEIGE   "#AF9366"
#define COLOR_ASSEMBLY_BROWN   "#97670E"
#define COLOR_ASSEMBLY_GOLD    "#AA9100"
#define COLOR_ASSEMBLY_YELLOW  "#CECA2B"
#define COLOR_ASSEMBLY_GURKHA  "#999875"
#define COLOR_ASSEMBLY_LGREEN  "#789876"
#define COLOR_ASSEMBLY_GREEN   "#44843C"
#define COLOR_ASSEMBLY_LBLUE   "#5D99BE"
#define COLOR_ASSEMBLY_BLUE    "#38559E"
#define COLOR_ASSEMBLY_PURPLE  "#6F6192"


//roguetown
#define CLOTHING_RED			"#a32121"
#define CLOTHING_PURPLE			"#8747b1"
#define CLOTHING_BLACK			"#414143"
#define CLOTHING_GREY			"#6c6c6c"
#define CLOTHING_BROWN			"#685542"
#define CLOTHING_GREEN			"#428138"
#define CLOTHING_DARK_GREEN		"#537bc6"
#define CLOTHING_BLUE			"#b5b004"
#define CLOTHING_YELLOW			"#ffcd43"
#define CLOTHING_TEAL			"#249589"
#define CLOTHING_AZURE			"#007fff"
#define CLOTHING_WHITE			"#ffffff"
#define CLOTHING_ORANGE			"#bd6606"
#define CLOTHING_MAJENTA		"#962e5c"

#define CLOTHING_WET			"#bbbbbb"

#define CLOTHING_COLOR_NAMES	list("Red","Purple","Black","Brown","Green","Blue","Yellow","Teal","White","Orange","Majenta")

/proc/clothing_color2hex(input)
	switch(input)
		if("Red")
			return CLOTHING_RED
		if("Purple")
			return CLOTHING_PURPLE
		if("Black")
			return CLOTHING_BLACK
		if("Brown")
			return CLOTHING_BROWN
		if("Green")
			return CLOTHING_GREEN
		if("Blue")
			return CLOTHING_BLUE
		if("Yellow")
			return CLOTHING_YELLOW
		if("Teal")
			return CLOTHING_TEAL
		if("Azure")
			return CLOTHING_AZURE
		if("White")
			return CLOTHING_WHITE
		if("Orange")
			return CLOTHING_ORANGE
		if("Majenta")
			return CLOTHING_MAJENTA


//kaizoku

#define CLOTHING_RONIN	 		"#861e1e"
#define CLOTHING_EIDOLON		"#613a3f"
#define CLOTHING_TOWERYAKKO		"#804d97"
#define CLOTHING_KABUKIMONO		"#9b874f"

#define CLOTHING_THUNDER		"#be8b48"
#define CLOTHING_STORM			"#1a2677"
#define CLOTHING_OCEAN			"#56928a"
#define CLOTHING_ISLAND			"#bd3541"

#define RANDOM_KAIZOKU_DYES		pick(CLOTHING_BARK_BROWN , CLOTHING_PEASANT_BROWN, CLOTHING_MUD_BROWN , CLOTHING_BOG_GREEN , CLOTHING_SPRING_GREEN , CLOTHING_PEAR_YELLOW , CLOTHING_PLUM_PURPLE, CLOTHING_SALMON, CLOTHING_RED_OCHRE, CLOTHING_YELLOW_OCHRE, CLOTHING_MAROON, CLOTHING_RUSSET)





//roguetown
// Expensive dyes ==========================
#define EXPENSIVE_DYES			list("Ash Grey","Chalk White","Cream","White","Blood Red","Plum Purple","Dark Ink","Forest Green","Sky Blue","Mustard Yellow", "Salmon", "Russet", "Maroon","Red Ochre", "Dunked in Water" )

#define CLOTHING_DARK_INK		"#4f4343"
#define CLOTHING_PLUM_PURPLE	"#683786"
#define CLOTHING_SALMON			"#a56176"
#define CLOTHING_BLOOD_RED		"#9c1919"

#define CLOTHING_MAROON			"#672c0d"
#define CLOTHING_RED_OCHRE		"#783530"
#define CLOTHING_RUSSET			"#8a4b1c"
#define CLOTHING_MUSTARD_YELLOW	"#b0a850"
#define CLOTHING_YELLOW_OCHRE	"#9b7a02"
#define CLOTHING_FOREST_GREEN	"#427e2c"
#define CLOTHING_SKY_BLUE		"#2f4a7c"
#define CLOTHING_MAGE_BLUE		"#4756d8"
#define CLOTHING_MAGE_GREEN		"#759259"
#define CLOTHING_MAGE_ORANGE	"#ad5e29"
#define CLOTHING_MAGE_YELLOW	"#d2bc2b"

// Royal dyes ==========================
#define CLOTHING_ROYAL_RED		"#8f3636"
#define CLOTHING_ROYAL_MAJENTA	"#822b52"
#define CLOTHING_FYRITIUS_DYE	"#b47011"
#define CLOTHING_ROYAL_PURPLE	"#865c9c"
#define CLOTHING_BARK_BROWN		"#685542"
#define CLOTHING_ROYAL_BLACK	"#2f352f"
#define CLOTHING_BOG_GREEN		"#58793f"
#define CLOTHING_ROYAL_TEAL		"#249589"
#define CLOTHING_PEAR_YELLOW	"#a19d20"
#define CLOTHING_CHALK_WHITE	"#c7c0b5"


// Cheap dyes ==========================
#define CHEAP_DYES				list("Ash Grey","Chalk White","Cream","Royal Black","Soot Black","Bark Brown","Winestain Red","Royal Red","Royal Majenta","Fyritius Orange","Berry Blue","Royal Blue","Royal Purple","Spring Green","Pear Yellow","Peasant Brown","Mud Brown","Chestnut","Old Leather","Bog Green","Royal Teal","Dunked in Water" )

#define CLOTHING_SOOT_BLACK		"#4b4b50"
#define CLOTHING_WINESTAIN_RED	"#6b3737"
#define CLOTHING_PEASANT_BROWN	"#574a43"
#define CLOTHING_MUD_BROWN		"#57493a"
#define CLOTHING_CHESTNUT		"#5f3d21"
#define CLOTHING_OLD_LEATHER	"#473a30"
#define CLOTHING_SPRING_GREEN	"#435436"
#define CLOTHING_BERRY_BLUE		"#38455b"

#define CLOTHING_ASH_GREY		"#999999"
#define CLOTHING_LINEN			"#b0ae80"
#define CLOTHING_WHITE			"#ffffff"
#define CLOTHING_WET			"#bbbbbb"
#define RANDOM_PEASANT_DYES		pick(CLOTHING_BARK_BROWN , CLOTHING_PEASANT_BROWN, CLOTHING_MUD_BROWN , CLOTHING_BOG_GREEN , CLOTHING_SPRING_GREEN , CLOTHING_PEAR_YELLOW )
#define RANDOM_NOBLE_DYES		pick( CLOTHING_DARK_INK, CLOTHING_PLUM_PURPLE, CLOTHING_SALMON, CLOTHING_RED_OCHRE, CLOTHING_YELLOW_OCHRE, CLOTHING_MAROON, CLOTHING_RUSSET, CLOTHING_MUSTARD_YELLOW, CLOTHING_FOREST_GREEN, CLOTHING_SKY_BLUE)
