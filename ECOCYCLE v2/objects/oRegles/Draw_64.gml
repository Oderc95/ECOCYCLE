/// @description Draw rules

// Ecran noir de focus
var c1 = c_black,
	c2 = c_white,
	texte = "";
	
draw_set_alpha(opacity2);
draw_roundrect_color(0, 0, global.view_width, global.view_height, c1, c1, false);
draw_set_alpha(1);

// L'image des règles
draw_self();

// Texte pour continuer
draw_set_font(fnt_ultra_large);  
draw_set_halign(fa_center); 

if global.show_rules == 0 {
	texte = "Appuyez sur la touche 'ENTREE' pour démarrer l'aventure !";
}else{
	texte = "Appuyez sur la touche 'i' pour masquer les règles";
}

var _y = (global.view_height * 0.93) - 5 * sin(get_timer()/150000);
draw_text_transformed_color(global.view_width * 0.5, _y, texte,
							0.2, 0.2, 0, c2, c2, c2, c2, opacity1);

draw_set_halign(fa_left);
draw_set_font(fnt_base);
draw_set_alpha(1);


