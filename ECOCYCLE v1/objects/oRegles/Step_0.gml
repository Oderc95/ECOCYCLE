/// @description Setup rules

// Alpha de l'image
opacity1 = min(1, opacity1 + 0.01);	 
y = y + sin(timer * 0.05) * 0.3;
timer ++;

image_alpha = opacity1;

// Alpha du fond
opacity2 = min(0.6, opacity2 + 0.01);	


