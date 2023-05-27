extends ContentInfo

const MODUTILS = {
	"world": {
		"modclub_destinations": [
			{
				"name": "MODCLUBDEMO_REGION_NAME_CAVE",
				"warp_target_scene": "res://mods/cat_modclubdemo/DemoCave.tscn",
#				"warp_target_chunk": Vector2(0, 0),
#				"warp_target_name": "EntranceWarp",
#				"flags": [],
			},
		],
		"modclub_population": [
			{
				"scene": "res://mods/cat_modclubdemo/DemoNPC.tscn",
#				"mode": "any idle",
#				"chance": 1.0,
#				"flags": [],
			},
			{
				"scene": "res://mods/cat_modclubdemo/ConditionalNPC_Sunny.tscn",
			},
			{
				"scene": "res://mods/cat_modclubdemo/ConditionalNPC_Frankie.tscn",
			},
			{
				"scene": "res://mods/cat_modclubdemo/ConditionalNPC_Vin.tscn",
			},
			{
				"scene": "res://mods/cat_modclubdemo/PartnerKayleigh.tscn",
			},
			{
				"scene": "res://mods/cat_modclubdemo/PartnerEugene.tscn",
			},
			{
				"scene": "res://mods/cat_modclubdemo/PartnerDog.tscn",
			},
			{
				"scene": "res://mods/cat_modclubdemo/OffenseMerchant.tscn",
				"mode": "shop",
				"flags": ["encounter_aa_oldgante"],
			},
			{
				"scene": "res://mods/cat_modclubdemo/SupportMerchant.tscn",
				"mode": "shop",
				"flags": ["encounter_aa_oldgante"],
			},
			{
				"scene": "res://mods/cat_modclubdemo/PassiveStickerMerchant.tscn",
				"mode": "shop",
				"flags": ["merchant_rescued"],
			},
			{
				"scene": "res://world/recurring_npcs/RangerTrader.tscn",
				"mode": "shop",
				"flags": ["met_ianthe"],
			},
			{
				"scene": "res://mods/cat_modclubdemo/VendingMachine1.tscn",
				"mode": "shop full",
			},
		],
	},
}

func init_content() -> void:
	TranslationServer.add_translation(preload("mod_strings.en.translation"))

	# The current version of Mod Club Station was released in
	# cat_modutils version code 5 (v1.3)
	assert(DLC.has_mod("cat_modutils", 5))
	if not DLC.has_mod("cat_modutils", 5):
		OS.alert(tr("MODUTILS_MISSING_MESSAGE"), tr("MODUTILS_MISSING_TITLE"))
#		DLC.get_tree().quit()
		return

	SceneManager.PRESERVABLE_SCENE_BLACKLIST.push_back("res://mods/cat_modclubdemo/")
