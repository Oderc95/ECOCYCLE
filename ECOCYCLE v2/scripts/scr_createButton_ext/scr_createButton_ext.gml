/// @desc scr_createButton_ext(pos_x, pos_y, sprite, image_center, scale_x, scale_y, hover_scale, check_hover_click, action)
//	IMAGE_CENTER // 0 : Centre // 1 : haut gauche // 2 : haut droite // 3 : bas droit // 4 : bas gauche
// check_hover_click : 0 : Hover // 1 : click (Click ne marche pas)
var pos_x, pos_y, sprite, image_center, scale_x, scale_y, hover_scale, check_hover_click, action;
function scr_createButton_ext(pos_x, pos_y, sprite, image_center = 2, scale_x = 1, scale_y = 1, hover_scale = 2, hover_offset_x = 0, hover_offset_y = 0, check_hover_click = 0, action) {
	var _pos_x			= argument0;
	var _pos_y			= argument1;
	var _sprite			= argument2;
	var _image_center	= argument3;
	var _scale_x		= argument4;
	var _scale_y		= argument5;
	var _hover_scale	= argument6;
	var _hover_offset_x	= argument7;
	var _hover_offset_y	= argument8;
	var _hover_click	= argument9; 
	var _action			= argument10; 
	var c				= c_black;
	var isHoveredClicked = false; 
	var radius			= 15; 
	
	  //******************************************************************
	 // PRINCIPAL
	//********************************************************************  
	if _image_center == 0 {
		// Centre
		if device_mouse_x_to_gui ( 0 ) >= _pos_x - (sprite_get_width(_sprite) * 0.5 * scale_x)
				&& device_mouse_x_to_gui ( 0 ) <= _pos_x + (sprite_get_width(_sprite) * 0.5 * scale_x)
				&& device_mouse_y_to_gui ( 0 ) >= _pos_y - (sprite_get_height(_sprite) * 0.5 * scale_y)
				&& device_mouse_y_to_gui ( 0 ) <= _pos_y + (sprite_get_height(_sprite) * 0.5 * scale_y) {
			if _hover_click == 1 { 
			    if device_mouse_check_button_pressed ( 0 , mb_left ) { 
			        // Check click
			        isHoveredClicked = true;
			        if (_action != undefined) { 
			            action(); // Exécute l'action associée au bouton
			        }
			    }else{
			    	// Le curseur est sur le bouton
					draw_sprite_ext(_sprite, 1, _pos_x, _pos_y, _scale_x, _scale_y, 0, c_white, 1);
			    }
			}else if _hover_click == 0 { 
				// Check hover  
				draw_sprite_ext(_sprite, 1, _pos_x - sprite_get_width(_sprite) * _hover_offset_x, _pos_y - sprite_get_height(_sprite) * _hover_offset_y, _scale_x * _hover_scale, _scale_y * _hover_scale, 0, c_white, 1); 
				
				isHoveredClicked = true;
				if (_action != undefined) { 
					action(); // Exécute l'action associée au bouton
				}
			}
		}else{
			// Le curseur n'est pas sur le bouton, donc utilise la couleur de base 
			draw_sprite_ext(_sprite, 0, _pos_x, _pos_y, _scale_x, _scale_y, 0, c_white, 1);
		}
		
	}else if _image_center == 1 { // bug
		// Haut gauche
		if device_mouse_x_to_gui ( 0 ) >= _pos_x && device_mouse_x_to_gui ( 0 ) <= _pos_x + sprite_get_width(_sprite)
		&& device_mouse_y_to_gui ( 0 ) >= _pos_y && device_mouse_y_to_gui ( 0 ) <= _pos_y + sprite_get_height(_sprite) {
			if _hover_click == 1 { 
				// Check click
			    if device_mouse_check_button_pressed ( 0 , mb_left ) { 
			        // Le bouton a été cliqué
			        isHoveredClicked = true;
			        if (_action != undefined) { 
			            action(); // Exécute l'action associée au bouton
			        }
			    }else{
			    	// Le curseur est sur le bouton
					draw_sprite_ext(_sprite, 1, _pos_x, _pos_y, _scale_x, _scale_y, 0, c_white, 1);
			    }
			}else if _hover_click == 0 {
				// Check hover 
				draw_sprite_ext(_sprite, 1, _pos_x, _pos_y, _scale_x * _hover_scale, _scale_y * _hover_scale, 0, c_white, 1); 
				isHoveredClicked = true;
				if (_action != undefined) { 
					action(); // Exécute l'action associée au bouton
				}
			}
		}else{
			// Le curseur n'est pas sur le bouton
			draw_sprite_ext(_sprite, 0, _pos_x, _pos_y, _scale_x, _scale_y, 0, c_white, 1);
		}  
		
	}else if _image_center == 2 {
		// Haut droit
		if device_mouse_x_to_gui ( 0 ) >= _pos_x - sprite_get_width(_sprite) && device_mouse_x_to_gui ( 0 ) <= _pos_x
		&& device_mouse_y_to_gui ( 0 ) >= _pos_y && device_mouse_y_to_gui ( 0 ) <= _pos_y + sprite_get_height(_sprite) {
			if _hover_click == 1 { 
				// Check click
			    if device_mouse_check_button_pressed ( 0 , mb_left ) { 
			        // Le bouton a été cliqué
			        isHoveredClicked = true;
			        if (_action != undefined) { 
			            action(); // Exécute l'action associée au bouton
			        }
			    }else{
			    	// Le curseur est sur le bouton
					draw_sprite_ext(_sprite, 1, _pos_x, _pos_y, _scale_x, _scale_y, 0, c_white, 1);
			    }
			}else if _hover_click == 0 {
				// Check hover 
				draw_sprite_ext(_sprite, 1, _pos_x - sprite_get_width(_sprite) * _hover_offset_x, _pos_y - sprite_get_height(_sprite) * _hover_offset_y, _scale_x * _hover_scale, _scale_y * _hover_scale, 0, c_white, 1);
				isHoveredClicked = true;
				if (_action != undefined) { 
					action(); // Exécute l'action associée au bouton
				}
			}
		}else{
			// Le curseur n'est pas sur le bouton
			draw_sprite_ext(_sprite, 0, _pos_x, _pos_y, _scale_x, _scale_y, 0, c_white, 1);
		}  
	}else if _image_center == 3 {
		// Bas droite
	}else if _image_center == 4 {
		// Bas gauche
	}
	
	return isHoveredClicked;
}
