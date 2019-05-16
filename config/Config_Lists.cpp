class base_list_weapon {
	kills = 1;
	mag = "";
	mag_count = 5;
	scope = "ace_optic_hamr_2d";
};

class Lists {

	class nato {
		class hlc_rifle_honeybadger : base_list_weapon {};

		class hlc_rifle_vendimus : base_list_weapon {};

		class hlc_rifle_RU556 : base_list_weapon {};
		
		class hlc_rifle_bcmblackjack : base_list_weapon {};
		
		class hlc_rifle_Bushmaster300 : base_list_weapon {};
		
		class hlc_rifle_Colt727 : base_list_weapon {};
		
		class hlc_rifle_M4a1carryhandle : base_list_weapon {};
		
		class hlc_rifle_g3a3ris : base_list_weapon {};
		
		class hlc_rifle_416D145_wdl : base_list_weapon {};
		
		class hlc_rifle_M27IAR : base_list_weapon {};
		
		class srifle_EBR_F : base_list_weapon {};
		
		class hlc_rifle_ACR68_mid_black : base_list_weapon {};
		
		class hlc_rifle_samr2 : base_list_weapon {};
		
		class srifle_GM6_F : base_list_weapon {
			kills = 3;
			scope = "optic_dms";
		};
	};

	class russian {
		class hlc_rifle_slr107u : base_list_weapon {};
		
		class hlc_rifle_ak47 : base_list_weapon {};
		
		class hlc_rifle_ak74 : base_list_weapon {};
		
		class hlc_rifle_ak74_dirty2 : base_list_weapon {};
		
		class hlc_rifle_ak74m : base_list_weapon {};
		
		class hlc_rifle_akm : base_list_weapon {};
		
		class hlc_rifle_aks74 : base_list_weapon {};
		
		class hlc_rifle_aks74u : base_list_weapon {};
		
		class hlc_rifle_rpk : base_list_weapon {};
		
		class hlc_rifle_RK62 : base_list_weapon {};
		
		class hlc_rifle_aek971 : base_list_weapon {};
		
		class hlc_rifle_aks74_GL : base_list_weapon {
			mag_count = 3;
			mag = "1Rnd_HE_Grenade_shell";
		};
		class hlc_rifle_FN3011Modern : base_list_weapon {};
			kills = 2;
			mag_count = 3;
			scope = "hlc_optic_vomz";
		};
	};
};

/*
			 random
				{"hlc_rifle_saiga12k",                  3, "<auto>", 6},
				{"hgun_Pistol_heavy_02_F", 1, "<auto>", 5},
				{"hgun_Pistol_01_F", 1, "<auto>", 5},
				{"hgun_Rook40_F", 1, "<auto>", 5},
				{"hlc_smg_mp5k", 1, "<auto>", 9},
				{"hlc_smg_mp5a2", 1, "<auto>", 5},
				{"hlc_smg_mp5sd6", 2, "<auto>", 5},
				{"arifle_AKS_F", 1, "<auto>", 5},
				{"arifle_AK12_F", 1, "<auto>", 5},
				{"arifle_AKM_F",        1, "<auto>", 5},
				{"hlc_rifle_RPK12",         1, "<auto>", 5},
				{"hlc_rifle_bab",               2, "<auto>", 5},
				{"hlc_rifle_bcmjack",       1, "<auto>", 5},
				{"hlc_rifle_RU5562",            2, "<auto>", 5},
				{"hlc_rifle_vendimus",      2, "<auto>", 5},
				{"hlc_rifle_SAMR",              1, "<auto>", 5},
				{"launch_RPG7_F", 1, "RPG7_F", 4},
				{"hlc_rifleACR_SBR_cliffhanger",                2, "<auto>", 5},
				{"arifle_CTARS_ghex_F",                 1, "<auto>", 5},
				{"SMG_03C_camo",        1, "<auto>", 5},
				{"MMG_02_sand_F", 1, "<auto>", 5},
				{"hlc_rifle_ak47",              2, "<auto>", 5},
				{"hlc_rifle_ak74_MTK",      1, "<auto>", 5},
				{"arifle_SPAR_03_snd_F",            2, "<auto>", 5},
				{"hlc_rifle_G36E1AG36_Romi",        2, "<auto>", 5},
				{"hlc_rifle_psg1",              1, "<auto>", 5},
				{"hlc_rifle_m14sopmod",             2, "<auto>", 6},
				{"srifle_DMR_03_khaki_F", 2, "<auto>", 5},
				{"hlc_rifle_saiga12k",              2, "<auto>", 5},
				{"LMG_Mk200_F",         2, "<auto>", 5},
				{"hlc_Pistol_M11",          1, "<auto>", 5},
				{"hlc_pistol_P229R_357Elite",       1, "<auto>", 5},
				{"hlc_Pistol_M11A1D",               1, "<auto>", 5},

				random
				{"MMG_01_hex_F",                        1, "<auto>", 3},
				{"hgun_Pistol_heavy_02_F",              1, "<auto>", 5},
				{"hgun_Pistol_heavy_01_F",              1, "<auto>", 5},
				{"hlc_pistol_Mk25D",                    1, "<auto>", 5},
				{"hgun_P07_khk_F",                      1, "<auto>", 5},
				{"hlc_smg_mp5k",                        1, "<auto>", 5},
				{"hlc_smg_mp5a2",                       1, "<auto>", 5},
				{"hlc_smg_mp5k_PDW",                    1, "<auto>", 5},
				{"SMG_03_TR_black",                     1, "<auto>", 5},
				{"LMG_Zafir_F",                         1, "<auto>", 3},
				{"hlc_rifle_auga3_GL_B",                1, "1Rnd_HE_Grenade_shell", 5},
				{"hlc_rifle_samr2",                     1, "<auto>", 5},
				{"srifle_GM6_F",                        1, "<auto>", 5},
				{"hlc_rifle_FN3011",                    1, "<auto>", 5},
				{"hlc_rifle_FN3011Tactical_grey",       1, "<auto>", 5},
				{"hlc_rifle_Colt727_GL",                1, "1Rnd_HE_Grenade_shell", 6},
				{"launch_RPG7_F",                       1, "RPG7_F", 4},
				{"srifle_DMR_04_Tan_F",                 1, "<auto>", 5},
				{"hlc_rifle_awMagnum_OD_ghillie",       1, "<auto>", 5},
				{"hlc_rifle_FN3011Modern_camo",         1, "<auto>", 5},
				{"hlc_rifle_416D10_ptato",              2, "<auto>", 5},
				{"hlc_rifle_PSG1A1_RIS",                2, "<auto>", 5},
				{"hlc_rifle_aks74",                     1, "<auto>", 5},
				{"hlc_rifle_rpk74n",                    2, "<auto>", 5},
				{"arifle_Katiba_F",                     1, "<auto>", 5},
				{"srifle_LRR_F",                        2, "<auto>", 5},
				{"hlc_rifle_saiga12k",                  1, "<auto>", 6},
				{"srifle_DMR_02_F",                     2, "<auto>", 5},
				{"SMG_02_F",                            2, "<auto>", 5},
				{"hlc_rifle_augsrhbar_b",               2, "<auto>", 5},
				{"hlc_rifle_bab",                       2, "<auto>", 5},
				{"hlc_smg_mp5k",                        2, "<auto>", 5},
				{"hlc_rifle_g3a3vris",                  2, "<auto>", 5},
				{"hlc_pistol_P239_40",                  3, "<auto>", 6},