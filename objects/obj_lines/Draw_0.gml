/// @description connect points
// You can write your code in this editor



for (var i = 0; i <num; i++){
	var _i = i - 1;
	if (_i < 0){
		_i = num - 1;
	}
	//draw_circle(_x1[i], _y1[i], 8, 1);
	//draw_circle(_x2[i], _y2[i], 8, 1);
	if (_x1[i] > _x1[_i]){
		draw_set_color(c_lime);
		draw_line_width(_x1[i], _y1[i], _x1[_i], _y1[_i],4);
		draw_set_color(c_green);
		draw_line_width(_x1[i], _y1[i] - _lineSep, _x1[_i], _y1[_i] - _lineSep,2);
		draw_set_color(c_midGreen);
		draw_line_width(_x1[i], _y1[i] - (3*_lineSep), _x1[_i], _y1[_i] - (3*_lineSep),1);
		if collision_line(_x1[i], _y1[i], _x1[_i], _y1[_i], obj_rocket, 1, 1){
			with (obj_rocket) {
				if (_dead == false){
					_dead = true;
					hspeed += other._speed;
					speed = -speed;
				}
			}
		}
		if (collision_line(_x1[i], _y1[i], _x1[_i], _y1[_i], obj_bullet, 1, 1)){
			_b = instance_nearest((_x1[i]), (_y1[i]), obj_bullet);
			with (_b) {
				instance_destroy();
			}
		}
	}
	if (_x2[i] > _x2[_i]){
		draw_set_color(c_lime);
		draw_line_width(_x2[i], _y2[i], _x2[_i], _y2[_i],4);
		draw_set_color(c_green);
		draw_line_width(_x2[i], _y2[i] + _lineSep, _x2[_i], _y2[_i] + _lineSep,2);
		draw_set_color(c_midGreen);
		draw_line_width(_x2[i], _y2[i] + (3*_lineSep), _x2[_i], _y2[_i] + (3*_lineSep),1);
		if collision_line(_x2[i], _y2[i], _x2[_i], _y2[_i], obj_rocket, 1, 1){
			with (obj_rocket) {
				if (_dead == false){
					_dead = true;
					hspeed += other._speed;
					speed = -speed;
				}
			}
		}
		if collision_line(_x2[i], _y2[i], _x2[_i], _y2[_i], obj_bullet, 1, 1){
			_b = instance_nearest((_x2[i]), (_y2[i]), obj_bullet);
			with (_b) {
				instance_destroy();
			}
		}
	}
}