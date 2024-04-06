/// @description Setup GUI

if instance_exists(oBiome_parent) && (ds_exists(oBiome_parent.list_graines, ds_type_list) && (ds_list_size(oBiome_parent.list_graines) > 0)) {  
	
	  //**********************************************************************
	 // Gestion de la création des resources
	//************************************************************************
	#region Gestion de la création des graines


		// Parcourez le deck et dessinez les cartes
		for (var i = 0; i < ds_list_size(oBiome_parent.list_graines); i++) {
			var id_graine = ds_list_find_value(oBiome_parent.list_graines, i)[0];
			var sprite_graine = asset_get_index(ds_list_find_value(oBiome_parent.list_graines, i)[1]); //scr_get_sprite_asset(oBiome_parent.list_graines, i);
			var check_exist = scr_instance_exists_ext(oGraine, id_graine, "id_graine");
			//show_debug_message($"sprite_graine={sprite_get_name(sprite_graine)} /// check_exist={check_exist}");
			if check_exist == false {
				var graine_instance = instance_create_layer(0, 0, "Instances", oGraine);
				graine_instance.id_graine = id_graine;  
				graine_instance.sprite_graine = sprite_graine;
			}
		} 
	#endregion 
	
	#region Gestion de la création des Oiseaux

		// Parcourez le deck et dessinez les cartes
		for (var i = 0; i < ds_list_size(oBiome_parent.list_birds); i++) {
			var id_bird = ds_list_find_value(oBiome_parent.list_birds, i)[0];
			var sprite_bird = asset_get_index(ds_list_find_value(oBiome_parent.list_birds, i)[1]); 
			var check_exist = scr_instance_exists_ext(oBird, id_bird, "id_bird");
			//show_debug_message($"sprite_bird={sprite_get_name(sprite_bird)} /// check_exist={check_exist}");
			if check_exist == false {
				var graine_instance = instance_create_layer(0, 0, "Instances", oBird);
				graine_instance.id_bird = id_bird;  
				graine_instance.sprite_bird = sprite_bird;
			}
		} 
	#endregion 

	  //**********************************************************************
	 // Gestion de l'affichage
	//************************************************************************
 
	#region Parcourir toutes les instances de plantes pour le placement
		for (var j = 0; j < instance_number(oGraine); j++) {
			current_instance[j] = instance_find(oGraine, j);
			 
			// Définir la taille des graines et les marges
			var graine_width = sprite_get_width(sPlante);
			var graine_height = sprite_get_height(sPlante);
			var margin_x = 20;
			var margin_y = 10;
			var num_columns = 1;
			
			// Définir la position de départ
			var start_x = 100;
			var start_y = 150;
			
			// Calculer la position des graines en fonction de la ligne et de la colonne
			var row = floor(j / num_columns);
			var col = j % num_columns;

			var graine_x = start_x + col * (graine_width + margin_x);
			var graine_y = start_y + row * (graine_height + margin_y);
			
			// Ajuster la position des graines
			current_instance[j].x = graine_x;
			current_instance[j].y = graine_y; 
		}

	#endregion 

	#region Parcourir toutes les instances d'oiseaux pour le placement
			for (var j = 0; j < instance_number(oBird); j++) {
				current_instance[j] = instance_find(oBird, j);
			 
				// Définir la taille des oiseaux et les marges
				var bird_width = sprite_get_width(sBird);
				var bird_height = sprite_get_height(sBird);
				var margin_x = 20;
				var margin_y = 10;
				var num_columns = 1;
			
				// Définir la position de départ
				var start_x = 100;
				var start_y = 500;
			
				// Calculer la position de l'oiseau en fonction de la ligne et de la colonne
				var row = floor(j / num_columns);
				var col = j % num_columns;

				var bird_x = start_x + col * (bird_width + margin_x);
				var bird_y = start_y + row * (bird_height + margin_y);
			
				// Ajuster la position de l'oiseau
				current_instance[j].x = bird_x;
				current_instance[j].y = bird_y; 
			}

		#endregion 


}

 //**********************************************************************
 // Selection des assets
//************************************************************************

#region Sélection des assets 
	// Gestion du HOVER
	if (global.selectedRessource != noone) && instance_exists(global.selectedRessource) { 
		// On met mon asset à true
		global.selectedRessource.isSelected = true;
		// Toutes les autres assets à false
		for (var i = 0; i < instance_number(oRessources); i++;) {
			graine[i] = instance_find(oRessources, i);
			if graine[i] != global.selectedRessource {
				graine[i].isSelected = false; 
			}
		} 
	} 

#endregion

