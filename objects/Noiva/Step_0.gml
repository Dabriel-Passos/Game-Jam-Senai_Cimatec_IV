if (y < chao) {
    veloc += gravidade;
} else {
    veloc = 0;
    y = chao;
}


if ((keyboard_check_pressed(vk_space)) && y == chao) {
    veloc = pulo;
}


y += veloc;

if (mouse_check_button_pressed(mb_left)){
    instance_create_layer(x + 50, y + 35, "Instances", obj_soco);
sprite_index = soconoiva;
image_index = 0;
tempo_soco = 10;
}
if (tempo_soco > 0) {
    tempo_soco -= 1; 
}

if (tempo_soco <= 0) {
    if (y < chao) {
        sprite_index = jumpnoiva;
    } else {
        sprite_index = Spr_Noiva;
    }
}
if(vidas <= 0){
	audio_stop_all();
	room_goto(rm_derrota);
}