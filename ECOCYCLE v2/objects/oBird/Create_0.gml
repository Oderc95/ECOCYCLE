/// @description Init

event_inherited();

// Set parameter
scale = 3; 
image_xscale = scale;
image_yscale = scale;

id_bird = noone;
sprite_bird = noone;

// States
isSelected = false;
isHover = false;

if instance_exists(oBiome_parent) image_alpha = oBiome_parent.opacity1;


