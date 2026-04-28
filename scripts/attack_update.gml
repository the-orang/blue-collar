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