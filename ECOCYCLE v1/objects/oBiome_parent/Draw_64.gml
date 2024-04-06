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
	
// Ecran noir de focus 
draw_set_alpha(opacity2);
draw_roundrect_color(0, 0, global.view_width, global.view_height, c, c, false);
draw_set_alpha(1); 

	
// Fenetre MAP
draw_set_alpha(opacity3);
draw_roundrect_color_ext(marge_w, marge_h, global.view_width - marge_w, global.view_height - marge_h, 
						 radius, radius, c1, c1, false);
draw_set_alpha(opacity1);
draw_roundrect_color_ext(marge_w, marge_h, global.view_width - marge_w, global.view_height - marge_h, 
						 radius, radius, c3, c3, true); 
draw_set_alpha(1);

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
		var tile_value		= ds_list_find_value(tile_positions_list, i + 12); 
		
		var tile_col = c_white; 
		
		draw_set_font(fnt_small);
		// Crée l'instance de l'objet avec le sprite de losange
		if tile_x && tile_y draw_sprite_ext(sTile, -1, tile_x, tile_y, tile_scale, tile_scale, 0, tile_col, opacity1);
		
		// Debug
		//draw_text_color(tile_x, tile_y + 4, $"id : {tile_id}\nHG : {tile_sideHG}\nH : {tile_sideH}\nHD : {tile_sideHD}\nG : {tile_sideG}\nBG : {tile_sideBG}\nB : {tile_sideB}\nBD : {tile_sideBD}\nD : {tile_sideD}\n", c1, c1, c1, c1, 1);
	}
	
	// HOVER MANAGE 
	for (var i = 0; i < tile_positions_grid_number; i++) {   
		var tile_id		= tile_positions_grid[# 0, i];
		var tile_x		= tile_positions_grid[# 1, i];
		var tile_y		= tile_positions_grid[# 2, i]; 
		
		var c = c_white,
			c1 = #EF9797,
			r = sprite_get_height(sTile_hover) - 14;   
		
		// Hover tile
		if point_in_circle(mouse_x, mouse_y, tile_x, tile_y + r, r) { 
			draw_sprite_ext(sTile_hover, -1, tile_x, tile_y, tile_scale, tile_scale, 0, c1, 0.7);
			//draw_circle(tile_x, tile_y + r, r, 1);
		}
		
		
		
		
		
		
	
	}


	  //**************************************************************
	 // Draw GUI Texte
	//**************************************************************** 
	// Nom du site de fouille
	scr_draw_set_text(c_white, fnt_large, fa_left, fa_top);
	draw_text_color(global.view_x + 180, global.view_y + 120, $"[ BIOME 1 ]", c3, c3, c3, c3, opacity1);
	draw_set_font(fnt_base);
	
}   


  
  //******************************************************************
 // RESET
//******************************************************************  
draw_set_font(fnt_base);
draw_set_alpha(1);








