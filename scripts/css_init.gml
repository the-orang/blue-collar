//css_init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign character select screen variables
//css_init.gml runs as soon as the character loads in on the character select screen
//NOTE: CSS is short for Character Select Screen

css_anim_time = 0;

//set these positions in css_update, not here
icon_x_pos = 0; //icon placement for the event/unlock based alts from rivals
icon_y_pos = 0;
preview_x = 0; //preview char
preview_y = 0;

alt_name = []; //refresh name array in case other characters use the same system

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Default";
alt_name[1] = "Creator";
alt_name[2] = "<3";
alt_name[3] = "Internet Antiquarian";
alt_name[4] = "Bunnings";
alt_name[5] = "Home Depot";
alt_name[6] = "Masters";
alt_name[7] = "White Space";
alt_name[8] = "Dunmer";
alt_name[9] = "Strobe";
alt_name[10] = "Strobe (Dark)"


alt_cur = 0; //checks current alt
alt_prev = 0; //checks previous alt
alt_total = array_length(alt_name); //sets the alt total depending on the amount of alt names provided



//ANIMATION VARS
sprite_change_offset("idle", 72, 98); //should mimic the load.gml offsets

preview_idle = sprite_get("idle");
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed


//used by the milestone alt's mask
mask_anim_speed = 0.15;
mask_move_x = 0.05;
mask_move_y = -0.15;