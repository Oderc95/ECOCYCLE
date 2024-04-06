
/// @desc scr_get_sprite_asset(list, assetID)
function scr_get_sprite_asset(list, assetID) {
	if ds_exists(list, ds_type_list) && ds_list_size(list) > 0 && assetID {
		for (var i = 0; i < ds_list_size(list); i++) {
			// On cherche l'id qui correspond pour récupérer le sprite équivalent
			var _id = ds_list_find_value(list, i); 
			//show_debug_message($"assetID : {assetID}  ///  _id : {_id}");
			if assetID == _id[0] {
				var spr = _id[1];
				var sprite_item = asset_get_index(spr);
				return sprite_item;
			}
		}
	}
	return noone;
} 


