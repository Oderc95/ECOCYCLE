/// @description Button behaviour
// Vous pouvez écrire votre code dans cet éditeur

image_blend = c_white;
if position_meeting(mouse_x,mouse_y,id){
	if mouse_check_button(mb_left){
				image_blend = c_dkgray;}
	else{
		image_blend = c_ltgray;}
	}