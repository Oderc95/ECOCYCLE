///@desc scr_draw_text(pos_x, pos_y, description, variable, color, font, alpha, halign, valign);

var _pos_x, 
	_pos_y,
	_description,
	_variable,
	_font, 
	_alpha,
	_halign,
	_valign;
	
function scr_draw_text(_pos_x = 20, _pos_y = 20, _description = "--->", _variable, _color = c_white, _font = fnt_dev_mode, _alpha = 1, _halign = fa_left, _valign = fa_top)
{
	// Init
	pos_x = _pos_x;
	pos_y = _pos_y;
	description = _description;
	variable = _variable;
	color = _color;
	font = _font;
	alpha = _alpha;
	halign = _halign;
	valign = _valign;
	font_default = draw_get_font();
	
	// Setup 
	/*draw_set_color(color);
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign); */
	scr_draw_set_text(color, font, halign, valign)
	
	// Draw
	if variable != undefined {
		draw_text_color(pos_x, pos_y, string(description) + " = " + string(variable), color, color, color, color, alpha);
	}else{
		draw_text_color(pos_x, pos_y, string(description), color, color, color, color, alpha);
	}
	// Reset
	scr_draw_set_text(1, font_default, fa_left, fa_top)
	/*draw_set_alpha(1);
	draw_set_font(font_default);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);*/
}