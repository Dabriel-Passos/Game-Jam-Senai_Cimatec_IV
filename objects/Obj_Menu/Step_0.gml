if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	opcao++;
}

if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	opcao--;
}

if(opcao<0) 
	opcao=3;
if(opcao>3)
	opcao=0;

if(keyboard_check(vk_enter) || keyboard_check(vk_space)){
	switch(opcao){
		case 0:
			room_goto_next();
			break;
		case 1:
			room_goto(R_Htp);
			break;
		case 2:
			zero=0;
			room_goto(R_Cr);
			break;
		case 3:
			game_end();
			break;
	}
}

	