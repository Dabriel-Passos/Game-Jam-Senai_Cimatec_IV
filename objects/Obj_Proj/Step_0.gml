if(xs>=1920) {
	x-=10;
	if(x<=0){
		instance_destroy();
	}
}
if(xs<=0) {
	x+=10;
	if(x>=1920){
		instance_destroy();
	}
}

if(place_meeting(x,y,Obj_Tile)) {
	instance_destroy();
}