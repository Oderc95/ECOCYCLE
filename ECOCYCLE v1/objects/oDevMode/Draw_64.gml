/// @description Debug Mode

  //******************************************************//
 //	ENTETE												 //
//******************************************************//
// Entête
var c = c_lime,				// Couleur du texte du dev mode
	cf = $042E0C,			// Couleur du fond du dev mode
	cfb = c_lime,			// Couleur de bordure du dev mode
	opacity = 0.9,			// Opacité du fond du dev mode
	f = fnt_dev_mode;		// Police du dev mode
	
  //******************************************************//
 //	DEV MODE											 //
//******************************************************//
draw_set_alpha(f);

if dev_mode_activate == 1 {
 
// Init variables
var room_actuelle = room_get_name(room);


// Fond
draw_set_alpha(opacity);
draw_rectangle_color(10, 20, window_get_height() * 0.7, window_get_width() * 0.5, cf, cf, cf, cf, 0);			// Fond
draw_rectangle_color(10, 20, window_get_height() * 0.7, window_get_width() * 0.5, cfb, cfb, cfb, cfb, 1);	// Bordure de fond
draw_set_alpha(1); 
draw_text_color(20, 20, "--------------------------------------\n" + 
						"Debug variables\n" +
						"--------------------------------------\n", c, c, c, c, 1);

//** Draw variables ***************************************************************************************
scr_draw_text( , 80,	"Room actuelle",			room_actuelle);
scr_draw_text( , 100,	"Jeu en pause",				global.pause);
if instance_exists(oBiome_parent) scr_draw_text( , 120,	"start_fouille",	oBiome_parent.start_fouille);
scr_draw_text( , 140,	"global.selectedGraine",	global.selectedGraine);






// ********************************************************************************************************

}else{ // AFFICHAGE PAR DEFAUT
	// Fond
	draw_set_alpha(0.8);
	draw_rectangle_color(-1, 10, 50, 50, cf, cf, cf, cf, 0);
	draw_rectangle_color(-1, 10, 50, 50, cfb, cfb, cfb, cfb, 1);
	var c = c_lime;
	// Indication pour activer le debug mode
	
	draw_text_color(10, 20, "TAB", c, c, c, c, 1);
}


draw_set_font(fnt_base);
draw_set_alpha(1);
