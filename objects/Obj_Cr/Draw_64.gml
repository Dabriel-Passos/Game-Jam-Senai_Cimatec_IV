if(global.zero>0) {
	draw_set_halign(fa_center);
	draw_set_font(Fnt_morto);
	draw_text(1366/2,100,"Obrigado por Jogar!");
}
if(global.zero=0) {
	draw_set_halign(fa_center);
	draw_set_font(Fnt_morto);
	draw_text(1366/2,100,"Beyond The Veil!");
}

draw_set_halign(fa_center);
draw_set_font(Fnt_Cr);
draw_text(1366/2,200,"Direção de Arte por:");
draw_text(1366/2,350,"Programação de Sistemas e Ferramentas:");
draw_text(1366/2,500,"Som e Música por:");

draw_set_font(Fnt_rei);
draw_text(1366/2,250,"Ana Luísa Lopes Reis\nManuel Adry Carvalho Velloso");
draw_text(1366/2,400,"Gabriel de Araújo Linhares Passos\nCarlos Francisco Leone Azevedo Costa");
draw_text(1366/2,550,"Manuel Adry Carvalho Velloso");



draw_set_halign(fa_left);
draw_text(30,650,"BACKSPACE -- VOLTAR");


