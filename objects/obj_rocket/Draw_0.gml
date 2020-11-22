/// @description Insert description here
// You can write your code in this editor

if (_dead == false){
	draw_self();
	if (_up){
		draw_sprite_ext(spr_flame, 0, x, y, 1, 1, _rotation, -1, 1);
	}
	//Controls
	draw_set_alpha(1);
	draw_set_color(c_green);
	draw_set_font(Font1);
	draw_set_halign(fa_center);
	draw_text(WINDOW.WIDTH/2, 32, "A/< = LEFT;  D/> = RIGHT;  W/^ = BOOST;  SPC/CTRL/SHIFT = SHOOT");
	//shooting
	if (_shooting){
		draw_set_color(c_green);
		draw_set_alpha(random(1)+0.3);
		draw_line_width(x + lengthdir_x(32, image_angle), y + lengthdir_y( 32, image_angle + (random(10)-5) ), x + lengthdir_x(512, image_angle + (random(10)-5) ), y + lengthdir_y(512, image_angle), irandom(8));
		_a = instance_nearest(x, y, obj_laser);
		if (collision_line(x, y, x + lengthdir_x(512, image_angle), y + lengthdir_y(512, image_angle), obj_laser, 1, 1)){
			with (_a){
				instance_destroy();
			}
		}
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



//score
draw_set_alpha(1);
draw_set_color(c_green);
draw_set_font(Font1);
draw_set_halign(fa_left);
draw_text(196, WINDOW.HEIGHT / 2 - 32, "SCORE: " + string(_score));

//draw_text(64,64,print);
if debug_mode{
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(32, 32, "FPS = " + string(fps_real));
   }