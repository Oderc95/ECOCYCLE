/// @description Init

event_inherited();

// Set parameter
scale = 3; 
image_xscale = scale;
image_yscale = scale;

id_graine = noone;
id_ressource = id_graine;
sprite_graine = noone; 

// States
isSelected = false;
isHover = false;

if instance_exists(oBiome_parent) image_alpha = oBiome_parent.opacity1;


