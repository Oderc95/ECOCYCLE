/// @desc scr_createButton(pos_x, pos_y, width, height, text, textColor, bgColor, borderColor, font, hoverColor, clickColor, action)
var pos_x, pos_y, width, height, text, textColor, bgColor, borderColor, font, hoverColor, clickColor, action;
function scr_createButton(pos_x, pos_y, width, height, text, textColor, bgColor, borderColor, font, hoverColor, clickColor, action) {
	var _pos_x			= argument0;
	var _pos_y			= argument1;
	var _width			= argument2;
	var _height			= argument3;
	var _text			= argument4;
	var _textColor		= argument5;
	var _bgColor		= argument6;
	var _borderColor	= argument7;
	var _action			= argument11;
	var _font			= argument8;
	var _hoverColor     = argument9;
	var _clickColor     = argument10;
	
	var isClicked		= false; 
	var radius			= 15;
	
	scr_draw_set_text(c_white, _font, fa_center, fa_middle);
	
	//draw_rectangle(_pos_x, _pos_y, _pos_x + _width, _pos_y + _height, 1); 
	
	if (point_in_rectangle(mouse_x, mouse_y, _pos_x, _pos_y, _pos_x + _width, _pos_y + _height)) {
	    if (mouse_check_button_pressed(mb_left)) {
	        // Le bouton a été cliqué
	        isClicked = true;
	        if (_action != undefined) { 
	            action(); // Exécute l'action associée au bouton
	        }
	    } else {
	    	// Le curseur est sur le bouton, donc change la couleur au survol 
			draw_roundrect_color_ext(_pos_x, _pos_y, _pos_x + _width, _pos_y + _height, 
									 radius, radius, _hoverColor, _hoverColor, false);
	    }
	} else {
		// Le curseur n'est pas sur le bouton, donc utilise la couleur de base 
		draw_roundrect_color_ext(_pos_x, _pos_y, _pos_x + _width, _pos_y + _height,
								 radius, radius, _bgColor, _bgColor, false);
	}
	 
	draw_roundrect_color_ext(_pos_x + 2, _pos_y + 2, _pos_x + _width - 2, _pos_y + _height - 2, 
							 radius, radius, _borderColor, _borderColor, true);
 
	draw_text_transformed_color(_pos_x + _width * 0.5, _pos_y + _height * 0.5, _text, 1, 1, 0,
								_textColor, _textColor, _textColor, _textColor, 1);
 
	// Reset
	scr_draw_set_text();
	
	return isClicked;
} 

