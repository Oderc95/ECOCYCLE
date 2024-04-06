/// @description Move up
// Vous pouvez écrire votre code dans cet éditeur

if y > 300{
	y -= 2;}
else{
	if text_nb == 0{
		if text_length < string_length(text_full_1){
			text_length += .5;
			if mouse_check_button(mb_left){
				text_length += 1;}
			text = string_copy(text_full_1,0,floor(text_length));}
		else{
			if mouse_check_button_released(mb_left){
				text_length = 5;
				text_nb = 1;}
			}
		}
	else if text_nb == 1{
		if text_length < string_length(text_full_2){
			text_length += .5;
			if mouse_check_button(mb_left){
				text_length += 1;}
			text = string_copy(text_full_2,0,floor(text_length));}
		else{
			if mouse_check_button_released(mb_left){
				text_length = 5;
				text_nb = 2;}
			}
		}
	else if text_nb == 2{
		if text_length < string_length(text_full_3){
			text_length += .5;
			if mouse_check_button(mb_left){
				text_length += 1;}
			text = string_copy(text_full_3,0,floor(text_length));}
		else{
			if mouse_check_button_released(mb_left){
				text_length = 5;
				text_nb = 3;}
			}
		}
	else if text_nb == 3{
		if text_length < string_length(text_full_4){
			text_length += .5;
			if mouse_check_button(mb_left){
				text_length += 1;}
			text = string_copy(text_full_4,0,floor(text_length));}
		else{
			if mouse_check_button_released(mb_left){
				text_nb = 4;}
			}
		}
	else if text_nb == 4{
		if mouse_check_button_released(mb_left){
			room_goto(rm_50_main);}
		}
	}