/// @description Init game

  //**********************************************************************
 // Inventaire
//************************************************************************
list_biome = ds_list_create();

// Composition de la ligne 
// [id_row, id_col, valeur, type_sol, H, B, G, D, HG, HD, BG, BD]

// type_sol / 1-terre / 2-Glace / 3-Roche / 4-Eau


ds_list_add(list_asset,		 
		    [1, 1, 0, 1, ],

