/// @description Move up
// Vous pouvez écrire votre code dans cet éditeur

if y > 300{
	y -= 2;}
else{
	if text_length < string_length(text_full){
		text_length += .25;
		if mouse_check_button(mb_left){
			text_length += 1;}
		text = string_copy(text_full,0,floor(text_length));}
	}