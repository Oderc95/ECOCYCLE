/// @desc scr_show_list(list)
/// @arg list
function scr_show_list(list){
	if !is_undefined(argument0) {
		var _list = argument0;
		var numCards = ds_list_size(_list);

		if ds_exists(_list, ds_type_list) && (numCards > 0) {
		    show_debug_message($"Nombre d'éléments dans la list : {numCards}");
		    for (var i = 0; i < numCards; i++) {
				var _element = ds_list_find_value(_list, i);
		        show_debug_message($"Carte {i} : {_element}");
			}
		}else{
		    show_debug_message("La list est vide."); 
		}
	}

}


