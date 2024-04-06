/// @description Setup GUI

if instance_exists(oGraine) instance_number(oGraine);

if instance_exists(oBiome_parent) && (ds_exists(oBiome_parent.list_graines, ds_type_list) && (ds_list_size(oBiome_parent.list_graines) > 0)) {  
	
	  //**********************************************************************
	 // Gestion de la création des graines
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

	  //**********************************************************************
	 // Gestion de l'affichage
	//************************************************************************
 
	#region Parcourir toutes les instances de cartes pour le placement
		for (var j = 0; j < instance_number(oGraine); j++) {
			current_instance[j] = instance_find(oGraine, j);
			 
			// Définir la taille des cartes et les marges
			var graine_width = sprite_get_width(sPlante);
			var graine_height = sprite_get_height(sPlante);
			var margin_x = 20;
			var margin_y = 20;
			var num_columns = 1;
			
			// Définir la position de départ
			var start_x = 150;
			var start_y = 150;
				
			// Calculer la position de la carte en fonction de la ligne et de la colonne
			var row = floor(j / num_columns);
			var col = j % num_columns;

			var graine_x = start_x + col * (graine_width + margin_x);
			var graine_y = start_y + row * (graine_height + margin_y);
			
			// Ajuster la position de la carte
			current_instance[j].x = graine_x;
			current_instance[j].y = graine_y; 
		}

	#endregion


}



