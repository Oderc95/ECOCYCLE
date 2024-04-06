/// @description Init game


  //**********************************************************************
 // BIOME
//************************************************************************
/*list_biome = ds_list_create();

// Stockage des informations
var tile_id = 1,
	tile_x = 0,
	tile_y = 0,
	tile_categorie = 0,
	tile_sideHG = 0,
	tile_sideH = 0,
	tile_sideHD = 0,
	tile_sideG = 0,
	tile_sideBG = 0,
	tile_sideB = 0,
	tile_sideBD = 0,
	tile_sideD = 0,
	tile_value = 0;

if instance_exists(oBiome_parent) {
	for (var i = 0; i < oBiome_parent.nb_row; i++) {
	    for (var j = 0; j < oBiome_parent.nb_col; j++) {
			// Ajoute les positions à la liste
			
			ds_list_add(tile_positions_list, tile_id); 
			//****
			
			if ds_exists(tile_positions_list, ds_type_list) {
				// Calcul des positions pour le losange
		        var tile_x = ds_list_find_value(tile_positions_list, tile_id);
		        var tile_y = map_y + (i + j) * (tile_h / 3) + tile_h / 3;
				
				// Ajout à "tile_positions_list" des positions player et IA
				ds_list_add(tile_positions_list, tile_id);
		        ds_list_add(tile_positions_list, tile_x);
		        ds_list_add(tile_positions_list, tile_y);
				ds_list_add(tile_positions_list, tile_used);
				ds_list_add(tile_positions_list, tile_side);  
				
				// Incrémenter l'ID
				tile_id += 1;
			}
		}
	}
}


