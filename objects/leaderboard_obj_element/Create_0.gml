/// @description Insert description here
// You can write your code in this editor

text_align = "center" // center, left, right
text_scale = 1
text_h_padding = 10
color = make_color_rgb(255,255,255)
sprite_background = false
title_sprite_background = false

switch (name)
{
	case "title_node":
		title_sprite_background = true
		break;
	case "title_text":
		text = text
		text_scale = 1.2
		text_align = "center"
		break;
		case "your_score_node":
	case "your_place":
		//color = make_color_rgb(0, 128, 0)
		text_align = "right"
		text_scale = 1.2
		break;
	case "leaderboard_place":
		text_align = "right"
		text_scale = 1.2
		break;
	case "your_username":
		text_align = "center";
		//color = make_color_rgb(0, 128, 0)
		break;
	case "leaderboard_username":
		text = text
		text_scale = .8
		text_align = "left"
		break;
	case "your_score":
		//color = make_color_rgb(0, 128, 0)
		text = text
		text_align = "left"
		break;
	case "leaderboard_score":
		text = text
		text_align = "left"
		break;
	case "your_score_entry":
	case "leaderboard_entry":
		sprite_background = true
		break;
}

function fit_text_in_box(text, box_width, default_scale) {
    var text_width = string_width(text) * default_scale;

    if (text_width > box_width) {
        // Calculate a scale factor to fit the text within the box
        var scale_factor = box_width / string_width(text);
        return scale_factor;
    }
    
    // Return the default scale if the text fits
    return default_scale;
}
