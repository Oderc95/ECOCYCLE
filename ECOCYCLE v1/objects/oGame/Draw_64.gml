/// @description Draw

  /*************************************************************/
 /* AFFICHAGE DES EVENEMENTS			                      */
/*************************************************************/ 
var	f = draw_get_font(),
	c = c_white;
	
// Nouvel événement 
scr_draw_set_text(c_white, fnt_base, fa_center, fa_middle);
draw_text_color(global.view_width_half, global.view_y + 60, global.gui_msg, c, c, c, c, cpt_new_msg_event);
  
  /*************************************************************/
 /* RESET								                      */
/*************************************************************/ 
scr_draw_set_text(c, fnt_base, fa_left, fa_top); 
draw_set_alpha(1);



