/// @description Insert description here
// You can write your code in this editor

if (_dead == false){
	draw_self();
	if (_up){
		draw_sprite_ext(spr_flame, 0, x, y, 1, 1, _rotation, -1, 1);
	}
}

if (_dead == true){
	repeat(10){
		draw_set_color(choose(c_orange, c_red, c_yellow));
		draw_set_alpha(random(1));
		if (_deadLen < 500){
			draw_line_width(x, y, x + lengthdir_x(_deadLen, random(360)), y + lengthdir_y(_deadLen, random(360)), irandom(20));
		}
		else if (_deadLen2 > 0){
			draw_line_width(x, y, x + lengthdir_x(_deadLen2, random(360)), y + lengthdir_y(_deadLen2, random(360)), irandom(20));
		}
	}
}
draw_set_alpha(1);
draw_set_color(c_green);
draw_text(64, WINDOW.HEIGHT / 2, "SCORE: " + string(_score));

//draw_text(64,64,print);
if debug_mode{
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(32, 32, "FPS = " + string(fps_real));
   }