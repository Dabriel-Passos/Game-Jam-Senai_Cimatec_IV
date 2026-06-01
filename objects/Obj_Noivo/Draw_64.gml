if(morto) {
	draw_set_colour(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(
    0,
    0,
    display_get_gui_width(),
    display_get_gui_height(),
    false
);
	draw_set_alpha(1);
	draw_set_colour(c_white);
	
	draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	
	draw_set_font(Fnt_morto);
	
    draw_text(display_get_gui_width()/2,display_get_gui_height()/2,
	"VOCE MORREU");
	
	draw_set_font(Fnt_rei);
	
	draw_text(display_get_gui_width()/2,display_get_gui_height()/1.2,
	"R - REINICIAR");
	
}