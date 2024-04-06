/// @description Draw biome

// Variables
var c = c_black,
	c1 = c_teal,
	c2 = c_white,
	c3 = c_aqua,
	c4 = c_orange,
	c5 = c_blue,
	margin_x = 48,
	margin_y = 48,
	marge_w = 170,
	marge_h = 120,
	radius = 20;

  //---------------------------------------------------------
 // Dessin de la MAP
//-----------------------------------------------------------

// Variables
var c = c_white,
	c1 = c_black,
	margin_x = 48,
	margin_y = 48; 
	
if ds_exists(tile_positions_list, ds_type_list) && ds_list_size(tile_positions_list) > 0 {

	  //**************************************************************
	 // Draw shadow TileMap
	//****************************************************************
	// Parcourir la liste en utilisant une boucle for
	for (var i = 0; i < ds_list_size(tile_positions_list); i += 13) { 
		var tile_x = ds_list_find_value(tile_positions_list, i + 1);
		var tile_y = ds_list_find_value(tile_positions_list, i + 2); 
	
		// Crée l'instance de l'objet avec le sprite de losange
		if tile_x && tile_y draw_sprite_ext(sTile_shadow, -1, tile_x, tile_y + map_shadow_dist, tile_scale, tile_scale, 0, c_white, opacity1);
	}


	  //**************************************************************
	 // TileMap
	//**************************************************************** 
	// Parcourir la liste en utilisant une boucle for
	for (var i = 0; i < ds_list_size(tile_positions_list); i += 13) {
		var tile_id			= ds_list_find_value(tile_positions_list, i);
		var tile_x			= ds_list_find_value(tile_positions_list, i + 1);
		var tile_y			= ds_list_find_value(tile_positions_list, i + 2);
		var tile_categorie	= ds_list_find_value(tile_positions_list, i + 3); 
		var tile_sideHG		= ds_list_find_value(tile_positions_list, i + 4); 
		var tile_sideH		= ds_list_find_value(tile_positions_list, i + 5); 
		var tile_sideHD		= ds_list_find_value(tile_positions_list, i + 6); 
		var tile_sideG		= ds_list_find_value(tile_positions_list, i + 7); 
		var tile_sideBG		= ds_list_find_value(tile_positions_list, i + 8); 
		var tile_sideB		= ds_list_find_value(tile_positions_list, i + 9); 
		var tile_sideBD		= ds_list_find_value(tile_positions_list, i + 10); 
		var tile_sideD		= ds_list_find_value(tile_positions_list, i + 11); 
		var tile_value		= ds_list_find_value(tile_positions_list, i + 12); // ID de la graine
		
		var tile_col = c_white; 
		
		draw_set_font(fnt_small);
		// Crée l'instance de l'objet avec le sprite de losange
		if tile_x && tile_y draw_sprite_ext(sTile, -1, tile_x, tile_y, tile_scale, tile_scale, 0, tile_col, opacity1);
		
		// Debug
		//draw_text_color(tile_x, tile_y + 4, $"id : {tile_id}\nHG : {tile_sideHG}\nH : {tile_sideH}\nHD : {tile_sideHD}\nG : {tile_sideG}\nBG : {tile_sideBG}\nB : {tile_sideB}\nBD : {tile_sideBD}\nD : {tile_sideD}\n", c1, c1, c1, c1, 1);
	}
	
	// HOVER MANAGE 
	for (var i = 0; i < tile_positions_grid_number; i++) {   
		var tile_id			= tile_positions_grid[# 0, i];
		var tile_x			= tile_positions_grid[# 1, i];
		var tile_y			= tile_positions_grid[# 2, i]; 
		var tile_categorie	= tile_positions_grid[# 3, i]; 
		var tile_sideHG		= tile_positions_grid[# 4, i]; 
		var tile_sideH		= tile_positions_grid[# 5, i]; 
		var tile_sideHD		= tile_positions_grid[# 6, i]; 
		var tile_sideG		= tile_positions_grid[# 7, i]; 
		var tile_sideBG		= tile_positions_grid[# 8, i]; 
		var tile_sideB		= tile_positions_grid[# 9, i]; 
		var tile_sideBD		= tile_positions_grid[# 10, i]; 
		var tile_sideD		= tile_positions_grid[# 11, i];  
		var tile_value		= tile_positions_grid[# 12, i];  
		 
		show_debug_message($"tile_id = {tile_id} // tile_value = {tile_value}")
		
		var c = c_white,
			c1 = #EF9797,
			r = sprite_get_height(sTile_hover) - 14,
			cpt_fouille = 3;   
		draw_circle(tile_x, tile_y + r, r, 1);
		// Hover tile
		if point_in_circle(mouse_x, mouse_y, tile_x, tile_y + r, r) { 
			draw_sprite_ext(sTile_hover, -1, tile_x, tile_y, tile_scale, tile_scale, 0, c1, 0.7);
			
			
			// GESTION DE LA FOUILLE 
			if mouse_check_button(global.key_interact_map) { 
				if tile_value == 0 {
					
					start_fouille = min(start_fouille + 0.05, cpt_fouille); 
					
					// FX
					if start_fouille >= 0.5 {
						FX_fouille_index = (FX_fouille_index + FX_fouille_spd / (game_get_speed(gamespeed_fps) / sprite_get_speed(sTile_FX))) % sprite_get_number(sTile_FX);
						draw_sprite_ext(sTile_FX, FX_fouille_index, tile_x, tile_y, tile_scale, tile_scale, 0, c_white, 1); 
					}
				
					scr_draw_circular_bar(mouse_x, mouse_y, start_fouille, cpt_fouille, c_lime, 15, 1, 8)
					if start_fouille == cpt_fouille && global.selectedGraine != noone {  
						tile_positions_grid[# 12, i] = global.selectedGraine.id_graine;
						show_debug_message(tile_positions_grid[# 12, i]);
					}
				}else if tile_value != 0 {
					start_fouille = 0;
					// Message de fin de fouille
					global.gui_msg = "Zone déjà cultivée !";
					global.new_msg_event = true; 
				}
			}else{
				start_fouille = 0; 
			}
		}
		
		// TILE DE LA ZONE FOUILLEE
		/*if tile_value != 0 {
			
			// Back
			draw_sprite_ext(sTile_hover, -1, tile_x, tile_y, tile_scale, tile_scale, 0, c_maroon, 1);
			
			// Dessin du sprite de l'asset trouvé
			if ds_exists(oBiome_parent.list_graines, ds_type_list) { 
				//var spr = asset_get_index(ds_list_find_value(oBiome_parent.list_graines, i)[1]);  
				//show_debug_message(ds_list_find_value(oBiome_parent.list_graines, i)[3]); 
				var spr = oBiome_parent.list_graines[| tile_positions_grid[# 12, i]][0];
				show_debug_message(spr);
				draw_sprite_ext(asset_get_index(spr), -1, tile_x, tile_x, 1, 1, 0, image_blend, 1);
			}
		}*/
		
		
		
		
	
	}


	  //**************************************************************
	 // Draw GUI Texte
	//**************************************************************** 
	// Nom du site de fouille
	/*scr_draw_set_text(c_white, fnt_large, fa_left, fa_top);
	draw_text_color(global.view_x + 180, global.view_y + 120, $"[ BIOME 1 ]", c3, c3, c3, c3, opacity1);
	draw_set_font(fnt_base);*/
	
}   


  
  //******************************************************************
 // RESET
//******************************************************************  
draw_set_font(fnt_base);
draw_set_alpha(1);








