noivoy = Obj_Noivo.y - camera_get_view_height(cam)/2;

cy = lerp(cy, noivoy, 0.1);

cy = clamp(cy,0,room_height-camera_get_view_height(cam));

camera_set_view_pos(cam, 0, cy);