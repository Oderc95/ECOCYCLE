
///@desc scr_instance_exists_ext(objet, check_new_id, existing_id_variable)
function scr_instance_exists_ext(objet, check_new_id, existing_id_variable) {
    var nombreInstances = instance_number(objet);

    for (var i = 0; i < nombreInstances; i++) {
        var instActuelle = instance_find(objet, i);
		var card_id = variable_instance_get(instActuelle, existing_id_variable)
        // Vérifiez si le numéro de la donnée actuelle correspond à celui recherché
        if (card_id == check_new_id) {
            return true; // Une instance avec le numéro existe
        }
    }

    return false; // Aucune instance avec le numéro trouvé
}

