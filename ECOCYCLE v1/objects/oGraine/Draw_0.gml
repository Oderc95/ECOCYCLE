/// @description draw plant

depth = -bbox_bottom;
	
if sprite_graine {
	// Calcul du centre de l'image
	var _x = x + sprite_get_width(sprite_graine) * 0.5,
		_y = y + sprite_get_height(sprite_graine) * 0.5,
		c = c_black,
		c1 = c_teal;
		
	// On garde les plantes au premier plan
 

	draw_set_alpha(oBiome_parent.opacity1);
	//draw_sprite_ext(sprite_graine, -1, _x, _y + 5, 1, 1, 0, c1, oBiome_parent.opacity1);
	scr_createButton_ext(x, y, sprite_graine, 0, 1, 1, 1, 1, 1, 1, scr_selected_graine);
	
	//draw_text(x, y - 34, $"isHover = {isHover} // isSelected = {isSelected}")
	
	if isSelected draw_circle(x, y, sprite_get_width(sprite_graine) * 0.8, 1);
}


