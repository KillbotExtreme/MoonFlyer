/// @description control point position 
// You can write your code in this editor

_speed += 0.001;
//close game
if keyboard_check(vk_escape){
	game_end();
}
//restart game
if keyboard_check(ord("R")){
	room_restart();
}

//move points
for (var i = 0; i < num; i++){
	//sets _i to previous i value (loops back around)
	var _i = i - 1;
	if (_i < 0){
		_i = num - 1;
	}
	//moves x points at the set speed
	_x1[i] -= _speed;
	_x2[i] -= _speed;
	//wrap around to x point behind previous point
	if (_x1[i] < -_sep){
		_x1[i] = room_width + (room_width / num);
		_y1[i] = irandom(room_height / 3);
		if (_y1[i] < 64){
			_y1[i] += 64;
		}
		if (_x1[i] < _x1[_i] + _sep){
			_x1[i] = _x1[_i] + _sep;
		}
		if (floor(random(10))==0){
			aaa = instance_create_layer(500, 500, "Instances", obj_turret);
			with (aaa){
				_iter = _i;
				_iter2 = i;
				_level = 1;
				
			}
		}
	}
	if (_x2[i] < -_sep){
		_x2[i] = _x1[i];//room_width + irandom((room_width / _sep));
		_y2[i] = _y1[i] + irandom(room_height / 2.5);
		if (_y2[i] < _y1[i]+488){
			_y2[i] += (irandom(488)+488);
		}
		if (_y2[i] > room_height - 64){
			_y2[i] = (room_height - 64) - irandom(488);
		}
		if (_x2[i] < _x2[_i] + _sep){
			_x2[i] = _x2[_i] + _sep;
		}
		if (floor(random(10))==0){
			with (instance_create_layer(500, 500, "Instances", obj_turret)){
				_iter = i;
				_iter2 = _i;
				_level = 2;
				
			}
		}
	}
}
