/// @description Insert description here
// Location
if (_level == 1){

	_1x = obj_lines._x1[_iter];
	_2x = obj_lines._x1[_iter2];
	_1y = obj_lines._y1[_iter];
	_2y = obj_lines._y1[_iter2];
	
	
	_pd = point_direction(_1x, _1y, _2x, _2y) - 90;
	_lendirx = lengthdir_x(sprite_width / 2, _pd);
	_lendiry = lengthdir_y(sprite_width / 2, _pd);
	image_angle = _pd;
	x= ((_1x + _2x) / 2) + _lendirx;
	y= ((_1y + _2y) / 2) + _lendiry;
}
if (_level == 2){
	_1x = obj_lines._x2[_iter2];
	_2x = obj_lines._x2[_iter];
	_1y = obj_lines._y2[_iter2];
	_2y = obj_lines._y2[_iter];
	_pd = point_direction(_1x, _1y, _2x, _2y) + 90;
	_lendirx = lengthdir_x(sprite_width / 2, _pd);
	_lendiry = lengthdir_y(sprite_width / 2, _pd);
	image_angle = _pd;
	x= ((_1x + _2x) / 2) + _lendirx;
	y= ((_1y + _2y) / 2) + _lendiry;
}

//kill
if (_1x < 0){
	instance_destroy();
}

//shoot
if (!(y > 450 && y < 550)){
	if (floor(random(256))==0){
		_lDX = x + lengthdir_x(16, image_angle);
		_lDY = y + lengthdir_y(16, image_angle);
		var i = instance_create_layer(_lDX, _lDY, "Instances", obj_bullet);
		with (i){
			direction = other.image_angle;
			speed = 8;
			hspeed -= obj_lines._speed;
		}
	}
}