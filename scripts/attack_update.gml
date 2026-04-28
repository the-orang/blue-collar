// attack_update.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#every-frame
// Runs every frame while your character is attacking.

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse()
}
//Uspecial stuff
if (attack == AT_USPECIAL && window >= 2){
    can_wall_jump = true;
    if (shield_pressed || attack_pressed || down_pressed){
        window = 3;
        window_timer = 1;
        sound_stop (asset_get("sfx_ell_steam_release"));
        destroy_hitboxes();
    }
}

if (attack == AT_USPECIAL && window == 2){
    vsp -= .35;
    if (window_timer > 5){
        with(asset_get("obj_article1")){
            if (player_id == other.id){
                gravity_on = false
            }
        }
    }
}

//Shine buffer fix 
if (attack == AT_DSPECIAL && (jump_pressed || (tap_jump_pressed && can_tap_jump() ))) {
	clear_button_buffer( PC_SPECIAL_PRESSED );
}
if (attack == AT_DSPECIAL && window_timer == 4) {
	clear_button_buffer( PC_SPECIAL_PRESSED );
}
if (attack == AT_DSPECIAL && has_hit_player) {
	can_fast_fall = false;
	clear_button_buffer( PC_DOWN_HARD_PRESSED );
}

if (attack == AT_DSPECIAL){
    if (special_down && window = 2) {
        window_timer = 2;
    }
    
    can_jump = true;
    can_fast_fall = false;
    can_move = false;
}

if (attack == AT_NSPECIAL) {
    if (window == 1 && has_hit_player == true && hitpause == false) {
        window = 2;
        window_timer = 0;
    }
    
    if (window == 1 && window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) && has_hit_player == false) {
        iasa_script();
        set_state(PS_IDLE);
    }
}




//other

#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;

	//we need this so if we put an "illegal" value it will not crash the game
	window_num = window;

	//speed resetting - horizontally
	switch (get_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE))
	{
		case 0: hsp += get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //adds speed
		case 1: case 2: hsp = get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //sets speed for the first frame/the entire window
	}

	//speed resetting - vertically
	switch (get_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE))
	{
		case 0: vsp += get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //adds speed
		case 1: case 2: vsp = get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //sets speed for the first frame/the entire window
	}
}
//NOTE: when using the do_particle function, make sure you encase it by both () and {} brackets, otherwise it won't work
//      the reason is because it now uses a lightweight object for the setup, to allow you to pick and choose the options you need more freely
#define do_particle(new_part)
{
	new_part.timer = 0;
	if (!variable_instance_exists(new_part, "spr")) new_part.spr = 0; //particle's sprite
    if (!variable_instance_exists(new_part, "xpos")) new_part.xpos = 0;	//x position
    if (!variable_instance_exists(new_part, "ypos")) new_part.ypos = 0;	//y position
    if (!variable_instance_exists(new_part, "hsp")) new_part.hsp = 0; //horizontal speed
    if (!variable_instance_exists(new_part, "vsp")) new_part.vsp = 0; //vertical speed
	if (!variable_instance_exists(new_part, "dir")) new_part.dir = 0;	//0 means it will default to the object's spr_dir, otherwise you can put either 1 or -1 to set a specific spr_dir for it
	if (!variable_instance_exists(new_part, "angle")) new_part.angle = 0; //the angle to draw the particle with
	if (!variable_instance_exists(new_part, "torque")) new_part.torque = 0;	//rotation speed, negative numbers rotate clockwise, positive numbers rotate counter-clockwise
	if (!variable_instance_exists(new_part, "xscale")) new_part.xscale = 1;	//the sprite's horizontal scale
	if (!variable_instance_exists(new_part, "yscale")) new_part.yscale = 1;	//the sprite's vertical scale
	if (!variable_instance_exists(new_part, "alpha")) new_part.alpha = 1; //numbers between 0 to 1 have visual changes
	if (!variable_instance_exists(new_part, "anim_alpha")) new_part.anim_alpha = 0;	//0 means it will not change the transperency, 1 will make it fade in, -1 will make it fade out
	if (!variable_instance_exists(new_part, "color")) new_part.color = c_white; //the color of the particle - note that without "filled" the particle will be tinted with this color instead
	if (!variable_instance_exists(new_part, "filled")) new_part.filled = false;	//if true, the sprite's color will be a single color based on "color"
	if (!variable_instance_exists(new_part, "shader")) new_part.shader = true;	//if true, the particle will use the player's shaders
	if (!variable_instance_exists(new_part, "layer")) new_part.layer = 1; //0 means it will use article3 to set the depth, 1 uses pre_draw and -1 uses post_draw
	if (!variable_instance_exists(new_part, "length")) new_part.length = 0;	//for how long should the particle play
	if (!variable_instance_exists(new_part, "img")) new_part.img = 0; //reffers to the particle's image index, if "anim_img" is false it will stick to that image for the duration of the particle
	if (!variable_instance_exists(new_part, "anim_img")) new_part.anim_img = true;	//if true, the particle's sprites will animate
	
    array_push(fx_part, new_part);
}
#define custom_attack_grid
{
	//custom attack grid example - Looping window X times (by Bar-Kun)
    var window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES); //looping window for X times - we set this up inside the different conditions
    var window_type_value = get_window_value(attack, window, AG_WINDOW_TYPE); //check the type of the window, helps condense the code a bit
    var window_loop_can_hit_more = get_window_value(attack, window, AG_WINDOW_LOOP_REFRESH_HITS); //checks if the loop should refresh hits or not

    //make sure the player isn't in hitpause
    if (!hitpause)
    {
        //make sure the window is in type 9 or 10
        if (window_type_value == 9 || window_type_value == 10)
        {
            //checks the end of the window
            if (window_timer == window_end)
            {
                if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
            }

            if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
            {
                if (window_timer == 0)
                {
                    if (window_loop_can_hit_more) attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                    window_loops ++; //at the start of the window, count a loop up
                }

                //when all the loops are over, go to the next window and reset the loop value
                //if it's window type 10, it should stop the loop prematurely
                if (window_loops > window_loop_value-1 || window_type_value == 10 && !free)
                {
                    destroy_hitboxes();
                    if (window < window_last)
                    {
                        window += 1;
                        window_timer = 0;
                    }
                    else set_state(free ? PS_IDLE_AIR : PS_IDLE);
                    window_loops = 0;
                }
            }
            else if (window_loop_value == 0 && window_loop_can_hit_more) attack_end(attack);
            //if we aren't using the AG_WINDOW_LOOP_TIMES custom attack grid index we can just make it loop forever
            //this is how the game usually treats window type 9
        }
		else if (window_loops > 0) window_loops = 0;
    }
}
#define workshop_compatibilities
{
	//sonic rainbow trick workshop compatibility
	if (attack == sonic_rainbowring_atk)
	{
		iasa_script(); //lets character cancel out of the animation at any point
		if (vsp > 0 && window == 3) //window 3 is the window specified for the trick hold pose
		{
			window ++;
			window_timer = 0;
		}
		if (window > 1 && !free) set_state(PS_LANDING_LAG);
	}

	//final smash buddy workshop compatibility
	if (attack == fs_char_attack_index)
	{
		can_fast_fall = false; //prevents fastfalling
		can_move = false; //prevents moving left and right
		hsp = 0; //stop character on both axis
		vsp = 0;
		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);

		switch (window)
		{
			case 1: //moves tester to the proper location (also needs the variables to be set up again)
				if (window_timer <= 2)
				{
					start_y_off = y;
					end_y_off = y-48;
				}
				else y = lerp(start_y_off, end_y_off, window_timer/window_end);
				break;
			case 3: //spawns hit fx before projectile is shot
				if (window_timer == 5) spawn_hit_fx(x + 32 * spr_dir, y - 32, fx_pow_hit[1]);
			case 2: case 4: //keep tester held up (also includes window 3)
				y = end_y_off;
				break;
			case 5: //move tester back down
				y = lerp(end_y_off, start_y_off, window_timer/window_end);
				break;
		}
	}
}