var _type = ds_map_find_value(async_load, "event_type");
if (_type == "leaderboard_upload")
{
    var _lb_ID = ds_map_find_value(async_load, "post_id");
    if _lb_ID == upload_ID
    {
        var _lb_name = ds_map_find_value(async_load, "lb_name");
        var _lb_done = ds_map_find_value(async_load, "success");
        var _lb_score = ds_map_find_value(async_load, "score");
        var _lb_updated = ds_map_find_value(async_load, "updated");
        show_debug_message("leaderboard post ID:" + string(_lb_ID) + " to lb:" + string(_lb_name) + " with score:" + string(_lb_score) + " updated=" + string(_lb_updated));
        if (_lb_done)
        {
            show_debug_message("- Succeeded");
        }
        else
        {
            show_debug_message("- Failed");
        }
    }
}