/// @description Initialisation

 /**********************************************************/
 /* ACTIVATION DEV MODE									  */
/*********************************************************/ 

#region DEV MODE
//--> Activer le dev mode
if keyboard_check_pressed(global.key_dev_mode) && dev_mode_activate == 0 && dev_mode_disable == 0 {
	dev_mode_activate = 1;
}
//--> Désativer le dev mode
if dev_mode_activate == 1 {
	dev_mode_delay = min(dev_mode_delay + dev_mode_delay_max, 1);
	if keyboard_check_pressed(global.key_dev_mode) && dev_mode_delay == 1 {
		dev_mode_activate = 0;
		dev_mode_disable = 1;
	}  
}
if dev_mode_disable == 1 {
	dev_mode_delay = max(dev_mode_delay - dev_mode_delay_max, 0);
	if dev_mode_delay == 0 dev_mode_disable = 0;
}

#endregion



