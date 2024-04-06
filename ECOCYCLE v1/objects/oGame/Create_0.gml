/// @description Init
 
  /*************************************************************/
 /* VARIABLES GLOBALES						                  */
/*************************************************************/
global.pause				= false;
global.gameover				= 0;
global.view_width			= camera_get_view_width(view_camera[0]);
global.view_height			= camera_get_view_height(view_camera[0]);
global.view_width_half		= camera_get_view_width(view_camera[0]) * 0.5;
global.view_height_half		= camera_get_view_height(view_camera[0]) * 0.5;
global.view_x				= camera_get_view_x(view_camera[0]);
global.view_y				= camera_get_view_y(view_camera[0]);

// Touches d'interaction
global.key_enter			= vk_enter;
global.key_left				= vk_left;
global.key_right			= vk_right;
global.key_up				= vk_up;
global.key_down				= vk_down;
global.key_dev_mode			= vk_tab;
global.key_interact_map		= mb_any;

// Rules
global.show_rules			= 0;
global.key_rules			= ord("I"); 

// Message d'aide
global.new_msg_event		=  false; 
global.gui_msg				=  ""; 


  /*************************************************************/
 /* INITIALISATION							                  */
/*************************************************************/
window_set_caption("Eco-cycle : Simulation");
display_set_gui_size(global.view_width, global.view_height);


  /*************************************************************/
 /* CREATIONS D'INSTANCES						              */
/*************************************************************/
if !instance_exists(oDevMode) instance_create_layer(0, 0, "GUI", oDevMode);

// GUI
if !instance_exists(oGUI) instance_create_layer(0, 0, "GUI", oGUI);

  /*************************************************************/
 /* VARIABLES									              */
/*************************************************************/
// New message event
cpt_new_msg_event = 0;



