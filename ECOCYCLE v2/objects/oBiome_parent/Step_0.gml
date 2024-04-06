/// @description Setup Biome

  //**********************************************************************
 // Gestion des alpha
//************************************************************************
// Alpha de la Map (premier plan)
opacity1 = min(1, opacity1 + 0.01); 
image_alpha = opacity1;

// Alpha du fond transparent 1 
opacity3 = min(0.8, opacity3 + 0.01);	

// Alpha du fond transparent 2
opacity2 = min(0.7, opacity2 + 0.01);	

// Alpha du fond transparent 3
opacity4 = min(0.5, opacity4 + 0.01);	



