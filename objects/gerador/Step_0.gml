cronometro -= 1;
if (cronometro <= 0) {
    var sorteio = irandom(2);
    if (sorteio == 0) {
        instance_create_layer(1312, 455, "Instances", inimigo);
    }
    else if(sorteio == 1){
        instance_create_layer(1312, 480, "Instances", Obstaculo);
    }
	else{
		instance_create_layer(1312, 480, "Instances", cone);
	}
    cronometro = tempo_batida;
}

if (!audio_is_playing(snd_teste)) {
    room_goto(rm_vitoria);
}