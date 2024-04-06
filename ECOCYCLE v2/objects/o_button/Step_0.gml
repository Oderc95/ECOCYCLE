/// @description Button behaviour
// Vous pouvez écrire votre code dans cet éditeur

image_blend = c_white;
if position_meeting(mouse_x,mouse_y,id){
	if mouse_check_button_pressed(mb_left){
		switch(irandom(3)){
			case(1):
				audio_play_sound(snd_click1,1,0);
				break;
			case(2):
				audio_play_sound(snd_click2,1,0);
				break;
			default:
				audio_play_sound(snd_click3,1,0);
				break;
			}
		}
	if mouse_check_button(mb_left){
				image_blend = c_dkgray;}
	else{
		image_blend = c_ltgray;}
	}