set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_ready"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_rag_axe_swing"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 0.5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 3);


//small
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, HFX_SHO_SWEET);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);

//sour
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 115);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, HFX_SHO_SWEET);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);

//sweet
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 115);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, HFX_SHO_HORN_HIT);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);

// vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define make_attack // Version 0
    // make_attack(_attack_name, (value_name, value)... )
    // Sets attack values for the given attack.
    // e.g. make_attack(AT_BAIR,
    //     AG_CATEGORY, 1,
    //     AG_SPRITE, sprite_get("bair")
    // )
    var _attack_name = argument[0]
    for(var i=1; i<=argument_count-1; i+=2) {
        set_attack_value(
            _attack_name, argument[i], argument[i+1]
        )
    }

#define make_window // Version 0
    // make_window(_attack_name, _index, (value_name, value)... )
    // Sets window values for the given window.
    // e.g.make_window(AT_BAIR, 1,
    //         AG_WINDOW_TYPE, 1,
    //         AG_WINDOW_LENGTH, 6
    //     )
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_window_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }

#define make_hitbox // Version 0
    // make_hitbox(_attack_name, _index, (value_name, value)... )
    // Sets hitbox values for the given hitbox.
    // e.g. make_hitbox(AT_BAIR, 1,
    //         HG_PARENT_HITBOX, 1,
    //         HG_HITBOX_TYPE, 1
    //     );
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_hitbox_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!