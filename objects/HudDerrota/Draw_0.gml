draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_red);
draw_text(room_width / 2, room_height / 2 - 40, "GAME OVER");

draw_set_color(c_white);
draw_text(room_width / 2, room_height / 2 + 20, "Aperte ESPACO para tentar novamente");
if(keyboard_check_pressed(vk_space)){
	room_goto(Room1);
}