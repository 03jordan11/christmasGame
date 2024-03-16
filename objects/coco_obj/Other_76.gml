/// @description Insert description here
// You can write your code in this editor
if(event_data[? "event_type"] == "sequence event"){
	switch(event_data[? "message"]){
		case "fireworks":
			var lay = layer_get_id("drinkCoco")
			effect_create_layer(lay,ef_firework, x, y, 1, c_red )
			
	}
}