class base_list_weapon {
	kills = 1;
	mag = "";
	mag_count = 3;
	scope = "";
};

class Lists {

	class nato {
		class hlc_rifle_saiga12k : base_list_weapon {
			kills = 3;
			magazine_count = 6;
		};

		class hgun_Pistol_heavy_02_F : base_list_weapon {
			kills = 1;
			magazine_count = 5;
		};

		class hgun_Pistol_01_F : base_list_weapon {
			kills = 1;
			magazine_count = 5;
		};
	};

	class russian {
		class hgun_Pistol_01_F : base_list_weapon {
			kills = 1;
			magazine_count = 5;
		};

		class hgun_Pistol_heavy_02_F : base_list_weapon {
			kills = 1;
			magazine_count = 5;
		};

		class hlc_rifle_saiga12k : base_list_weapon {
			kills = 3;
			magazine_count = 6;
		};
	};
};

/*

data[] = {
			{  	//waffeclassname, kills, munition, magazinanzahl
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
			},
			{
				{"hlc_rifle_RU5562", 2, "<auto>", 5},
				{"hlc_rifle_bcmjack", 3, "<auto>", 5},
				{"hlc_rifle_Colt727", 1, "<auto>", 5},
				{"hlc_rifle_G36KMLIC", 1, "<auto>", 5},
				{"srifle_DMR_07_blk_F", 1, "<auto>", 5},
				{"hlc_rifle_416C", 1, "<auto>", 5},
				{"hlc_rifle_ak47", 3, "<auto>", 5},
				{"hlc_rifle_ak74m_MTK",     1, "<auto>", 5},
				{"hlc_rifle_ak12",      2, "<auto>", 5},
				{"hlc_rifleACR_SBR_cliffhanger",    1, "<auto>", 5},
				{"hlc_rifle_auga3",         1, "<auto>", 5},
				{"hlc_rifle_aek971_mtk",            2, "<auto>", 5},
				{"hlc_rifle_STG58F",        5, "<auto>", 5}
		   
			},
			{
				{"hlc_rifle_slr107u", 2, "<auto>", 8},
				{"hlc_rifle_ak47", 2, "<auto>", 8},
				{"hlc_rifle_ak74", 2, "<auto>", 8},
				{"hlc_rifle_ak74_dirty2", 2, "<auto>", 8},
				{"hlc_rifle_ak74m", 2, "<auto>", 8},
				{"hlc_rifle_akm", 2, "<auto>", 8},
				{"hlc_rifle_aks74", 2, "<auto>", 8},
				{"hlc_rifle_aks74u", 2, "<auto>", 8},
				{"hlc_rifle_rpk", 2, "<auto>", 8},
				{"hlc_rifle_RK62", 2, "<auto>", 8},
				{"hlc_rifle_aek971", 2, "<auto>", 8},
				{"hlc_rifle_aek971worn", 2, "<auto>", 8},
				{"hlc_rifle_psg1", 3, "<auto>", 8},
			},
			{
				{"hlc_rifle_honeybadger", 1, "<auto>", 8},
				{"hlc_rifle_vendimus", 1, "<auto>", 8},
				{"hlc_rifle_RU556", 2, "<auto>", 8},
				{"hlc_rifle_bcmblackjack", 1, "<auto>", 8},
				{"hlc_rifle_Bushmaster300", 1, "<auto>", 8},
				{"hlc_rifle_Colt727", 2, "<auto>", 8},
				{"hlc_rifle_M4a1carryhandle", 1, "<auto>", 8},
				{"hlc_rifle_g3a3ris", 2, "<auto>", 5},
				{"hlc_rifle_416D145_wdl", 1, "<auto>", 5},
				{"hlc_rifle_M27IAR", 1, "<auto>", 8},
				{"hlc_rifle_saiga12k",                  5, "<auto>", 6},
				{"srifle_EBR_F", 1, "<auto>", 8},
				{"hlc_rifle_ACR68_mid_black", 1, "<auto>", 8},
				{"hlc_rifle_samr2", 1, "<auto>", 8},
				{"hlc_rifle_augsrhbar_b", 2, "<auto>", 8},
				{"hlc_rifle_m14sopmod", 2, "<auto>", 8},
				{"srifle_GM6_F", 3, "<auto>", 8},
			},
			{
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
			}
			,
			{
				{"hgun_Pistol_01_F", 1, "<auto>", 5},
				{"hgun_P07_khk_F", 1, "<auto>", 5},
				{, 2, "<auto>", 5},
				{, 2, "<auto>", 5},
				{, 2, "<auto>", 5},
				{, 2, "<auto>", 5},
				{, 2, "<auto>", 5},
				{, 2, "<auto>", 5},
			}
			
		};

*/