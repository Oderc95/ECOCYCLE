/// @description Paramètres généraux

  /*************************************************************/
 /* PARAMETRES GENERAUX								          */
/*************************************************************/
#region PARAMETRES GENERAUX

// Restart game
if (keyboard_check(ord("R")) || (gamepad_button_check_pressed(0, gp_start))) {
	//slideTransition(TRANS_MODE.RESTART);
	game_restart();
}
// End game
if (keyboard_check(vk_escape) || (gamepad_button_check_pressed(0, gp_select))) {
	game_end();
}

#endregion
// CommentPol
// Comment3


// TEST

  /*************************************************************/
 /* REGLES								                      */
/*************************************************************/
var w_half = global.view_width * 0.5,
	h_half = global.view_height * 0.5;

if room == rm_50_main { 
	// [ Première fois ] 
	// On affiche les règles
	if !instance_exists(oRegles) && global.show_rules == 0 { 
		var inst = instance_create_layer(w_half, h_half, "Instances", oRegles);
		inst.image_alpha = 0; 
	}else
	// Destruction des règles la première fois
	if global.show_rules == 0 && keyboard_check_pressed(global.key_enter) {
		if instance_exists(oRegles) instance_destroy(oRegles);  
		// On ouvre la MAP pour la première fois
		//if !instance_exists(oMap) instance_create_layer(w_half, h_half, "Instances", oMap);
		global.show_rules = 1;
	}
	
	//********************************************
	// Création
	if global.show_rules == 1 && keyboard_check_pressed(global.key_rules) {
		if !instance_exists(oRegles) {
			var inst = instance_create_layer(w_half, h_half, "GUI", oRegles);
			inst.image_alpha = 0;
			global.show_rules = 2;
		} 
	}else 
	// Destruction
	if global.show_rules == 2 && keyboard_check_pressed(global.key_rules) {
		if instance_exists(oRegles) instance_destroy(oRegles);
		global.show_rules = 1;
	}
	//********************************************
	// Check
	if !instance_exists(oRegles) && !instance_exists(oBiome_parent) {
		if !instance_exists(oBiome_parent) instance_create_layer(0, 0, "Instances", oBiome_parent);
	}/*se if !instance_exists(oRegles) && instance_exists(oBiome_parent) {
		oBiome_parent.visible = false;
	}*/
}


  //**********************************************************************
 // Affichage des messages d'interaction
//************************************************************************
// Fondue nouvelle interaction
if global.new_msg_event == true {
	cpt_new_msg_event = min(cpt_new_msg_event + 0.005, 1);
}else if global.new_msg_event == false {
	cpt_new_msg_event = max(cpt_new_msg_event - 0.005, 0);
}
if cpt_new_msg_event == 1 {
	global.new_msg_event = false;
}







