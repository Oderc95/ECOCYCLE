/// @desc scr_draw_set_text(color, font, halign, valign)
/// @arg color
/// @arg font
/// @arg halign
/// @arg valign

function scr_draw_set_text(color = c_white, font = fnt_small, halign = fa_left, valign = fa_top){
	if argument1 == 1 {
		argument1 = draw_get_font();
	}else{
		argument1 = font;
	}
	draw_set_color(argument0);
	draw_set_font(argument1);
	draw_set_halign(argument2);
	draw_set_valign(argument3);
}
