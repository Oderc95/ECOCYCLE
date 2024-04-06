/// @desc scr_check_hover_all_graine(objet, sprite = noone)
function scr_check_hover_all_graine(objet, sprite = noone) { 
	var nb_graine = 0; 
	with(objet) {
		if sprite != noone 
			&& device_mouse_x_to_gui ( 0 ) >= x - (sprite_get_width(sprite) * 0.5)
			&& device_mouse_x_to_gui ( 0 ) <= x + (sprite_get_width(sprite) * 0.5)
			&& device_mouse_y_to_gui ( 0 ) >= y - (sprite_get_height(sprite) * 0.5) 
			&& device_mouse_y_to_gui ( 0 ) <= y + (sprite_get_height(sprite) * 0.5) {
			nb_graine ++;
		} 
	}
    return nb_graine;
}



