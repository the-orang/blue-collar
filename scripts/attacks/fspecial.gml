// fspecial.gml

// --- SIDE SPECIAL SETUP ---

set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2); // change ID if needed
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial")); // 1-frame sprite
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3); // startup + active

// --- Window 1: Startup 
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

// --- Window 2: Active
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3); // short active frames
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10);       // forward boost
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);   // absolute speed
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -1); // locks vertical speed
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2); // absolute speed
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_steam_hit"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 144);

// --- Window 3: Endlag ---
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 9); // adjust for desired endlag
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2); // slows air momentum