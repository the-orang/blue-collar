// hit_player.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#hit-player-gml
// Called when you hit another character.

if (attack == AT_JAB && window == 1) {
    hit_player_obj.x = x + spr_dir * 40
    hit_player_obj.y = y - 2
}
