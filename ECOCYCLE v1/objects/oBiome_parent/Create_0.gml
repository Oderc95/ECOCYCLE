/// @description Initialisation

/// @description Init Map

// Général
opacity1 = 0;
opacity2 = 0;
opacity3 = 0;
opacity4 = 0;

  //**************************************************************
 // MAP VARIABLES
//****************************************************************
/// @description Map setting
 
// Tile size
tile_scale = 1.7;
tile_w = sprite_get_width(sTile) * tile_scale;
tile_h = sprite_get_height(sTile) * tile_scale;

// Position de la map
map_x = global.view_width * 0.5;
map_y = global.view_y + 128;

x = map_x;
y = map_y; 

// Taille de la map
nb_col = 5;
nb_row = 5;

// Map side
map_left = map_x - (tile_w * nb_col * 0.5);
map_right = map_x + (tile_w * nb_col * 0.5);
map_top = map_y;
map_bot = map_y + 80 + (tile_h * nb_row * 0.5);

// Distance shadow
map_shadow_dist = 48;

  //**********************************************************************
 // Stockage des positions
//************************************************************************
tile_positions_list = ds_list_create();

list_biome = ds_list_create();

// Stockage des informations
var tile_id = 1,
	tile_x = 0,
	tile_y = 0;

for (var i = 0; i < nb_row; i++) {
    for (var j = 0; j < nb_col; j++) {
		// Ajoute les positions à la liste
		if ds_exists(tile_positions_list, ds_type_list) {
			// Calcul des positions pour le losange
	        var tile_x			= map_x + (j - i) * (tile_w / 2),
				tile_y			= map_y + (i + j) * (tile_h / 3) + tile_h / 3,
				tile_categorie	= 1,
				tile_sideHG		= tile_id - nb_col - 1,
				tile_sideH		= tile_id - nb_col,
				tile_sideHD		= tile_id - nb_col + 1,
				tile_sideG		= tile_id - 1,
				tile_sideBG		= tile_id + nb_row - 1,
				tile_sideB		= tile_id + nb_row,
				tile_sideBD		= tile_id + nb_row + 1,
				tile_sideD		= tile_id + 1,
				tile_value		= tile_id;
			
			// Ajout à "tile_positions_list" des parametres
			ds_list_add(tile_positions_list, tile_id);
	        ds_list_add(tile_positions_list, tile_x);
	        ds_list_add(tile_positions_list, tile_y);
			ds_list_add(tile_positions_list, tile_categorie);
			ds_list_add(tile_positions_list, tile_sideHG);  
			ds_list_add(tile_positions_list, tile_sideH);
			ds_list_add(tile_positions_list, tile_sideHD);  
			ds_list_add(tile_positions_list, tile_sideG);  
			ds_list_add(tile_positions_list, tile_sideBG);  
			ds_list_add(tile_positions_list, tile_sideB);     
			ds_list_add(tile_positions_list, tile_sideBD);  
			ds_list_add(tile_positions_list, tile_sideD);  
			ds_list_add(tile_positions_list, tile_value);  
			
			
			// Incrémenter l'ID
			tile_id += 1;
		}
	}
}

var tile_positions_grid_array = [];
if ds_exists(tile_positions_list, ds_type_list) {
	for (var i = 0; i < ds_list_size(tile_positions_list); i += 13) {
		var tile_id = ds_list_find_value(tile_positions_list, i); 
		var tile_x = ds_list_find_value(tile_positions_list, i + 1);		
		var tile_y = ds_list_find_value(tile_positions_list, i + 2);  
		
		// Ajout à "tile_positions_list"
		array_push(tile_positions_grid_array, [tile_id, tile_x, tile_y, tile_categorie, tile_sideHG, tile_sideHD, tile_sideG, tile_sideBG, tile_sideB, tile_sideHG, tile_sideBD, tile_sideD, tile_value]) ;
	}
}

tile_positions_grid = scr_create_ds_grid_from_array(tile_positions_grid_array);
tile_positions_grid_number = ds_grid_height(tile_positions_grid);

