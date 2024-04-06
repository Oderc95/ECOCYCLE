/// @description draw plant

// On garde les plantes au premier plan
depth = -bbox_bottom;

if sprite_plante {
	draw_set_alpha(oBiome_parent.opacity1);
	draw_sprite_ext(sprite_plante, -1, _x, _y + 5, scale_icon * 1.1, scale_icon * 1.1, 0, c1, oBuild.opacity1);
	

}

scr_createButton_ext(50, 100, sPlante, 0, 1, 1, 1, 1, 1, 1, scr_selected_plante);


