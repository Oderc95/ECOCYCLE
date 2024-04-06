/// @description Draw bubble
// Vous pouvez écrire votre code dans cet éditeur
draw_sprite(s_level_background,0,room_width/2,room_height/2);
draw_self();
if text_length > 0{
	draw_sprite(s_level_bubble,0,x,y);
	draw_text_ext(x+20,y,text,15,210);}
draw_sprite(s_level_foreground,0,room_width/2,room_height/2);