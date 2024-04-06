///@desc scr_selected_ressource()
function scr_selected_ressource(){
	
	global.selectedRessource = id;
	
	if id.object_index == oBird {
		global.type_selectedRessource = 1; // Bird
		global.selectedRessource.id_ressource = id_bird;
	}else if id.object_index == oGraine {
		global.type_selectedRessource = 2; // Plante
		global.selectedRessource.id_ressource = id_graine;
	}
	 
	
}