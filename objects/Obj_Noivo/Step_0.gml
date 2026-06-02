esq = keyboard_check(ord("A"));
dir = keyboard_check(ord("D"));
pulo = keyboard_check_pressed(vk_space);
longo = keyboard_check(vk_space);

parede_esq = place_meeting(x-1,y,Obj_Tile);
parede_dir = place_meeting(x+1,y,Obj_Tile);

nap = (parede_esq || parede_dir) && !place_meeting(x,y+1,Obj_Tile);

dmov = dir-esq;

if(wjtimer<=0)
	hspd = dmov*spd;
	
wjtimer = max(0, wjtimer - 1);

if(vida<=0)  {
	max_queda_spd = 30;
	morto=true;
}

if(hspd!=0 && !morto) {
	if(hspd>0){
		sprite_index = Spr_Noivo_Andando;
		image_xscale = xscale;
	}else{
		sprite_index = Spr_Noivo_Andando;
		image_xscale = -xscale;
	}
	
}else{
	sprite_index = Spr_Noivo;
}


if (place_meeting(x, y + 1, Obj_Tile)) {
    ctimer = ct;
} else {
    ctimer = max(0, ctimer-1);
}

if (pulo && !morto) {
    ptimer = pt;
} else {
    ptimer = max(0, ptimer-1);
}

if(pulo && nap){
	vspd=pspd;
	if(parede_esq)
		hspd=5;
	if(parede_dir) 
		hspd=-5;
		
	wjtimer=12;
}

if(nap && vspd>=4 && dmov!=0) {
	vspd=4;
	sprite_index = Spr_Noivo_Parede;	
}

if(ptimer>0 && ctimer > 0) {
	   
	vspd=pspd;
	ptimer=0;
	ctimer=0;
}

if(!place_meeting(x,y+1,Obj_Tile)) {
	if(vspd < 0 && !longo) {
		vspd = max(vspd,vspd*0.5);
	}
}

if(!place_meeting(x,y+1,Obj_Tile)) {
	vspd = min(vspd+g,max_queda_spd);
}

if(place_meeting(x+hspd,y,Obj_Tile)) {
	while(!place_meeting(x+sign(hspd),y,Obj_Tile)){
		x+=sign(hspd);
	}
	hspd=0;
}
if(!morto) {
	x+=hspd;
}

if(place_meeting(x,y+vspd,Obj_Tile) && !morto) {
	while(!place_meeting(x,y+sign(vspd),Obj_Tile)){
		y+=sign(vspd);
	}
	vspd=0;
}
y+=vspd;

if(place_meeting(x,y,Obj_Anel)) {
	global.zero++;
	room_goto_next();
}

if(place_meeting(x,y,Obj_Proj)) {
	with(instance_place(x,y,Obj_Proj)) {
		instance_destroy();
	}
	vida--;
}

if(keyboard_check_pressed(ord("R"))) {
	max_queda_spd = 12;
	morto=false;
	room_restart();
}


if(keyboard_check_pressed(vk_escape)) {
	room_goto(R_Menu);
}












