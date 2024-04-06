/// @description Draw bubble
// Vous pouvez écrire votre code dans cet éditeur
draw_sprite(s_level_background,0,room_width/2,room_height/2);
draw_self();
if y <= 301{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_medium_normal);
	draw_set_colour(c_black);
	draw_sprite(s_level_bubble,0,x,y);
	draw_text_ext(x-440,y-130,text,18,400);}
draw_sprite(s_level_foreground,0,room_width/2,room_height/2);