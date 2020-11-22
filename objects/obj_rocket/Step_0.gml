/// @description Insert description here
// You can write your code in this editor
if (_dead == false){

	//Input
	_left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
	_right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
	_up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
	_shoot = (keyboard_check(vk_space)||keyboard_check(vk_control)||keyboard_check(vk_shift));
	_rotation += ((_left - _right) * _rotationSpeed);
	image_angle = _rotation;

	_sin = dsin(_rotation)
	_cos = dcos(_rotation)


	//gravity
	if (vspeed < _gravMax){
		vspeed += _grav;
	}

//if (_up && speed < _vSpeedMax){
//vspeed -= _speed*_sin;
//}

	if (_up){
		if (vspeed > -_vSpeedMax){
			vspeed -= _speed * _sin;
		}
		if (hspeed < _hSpeedMax){
			hspeed += _speed * _cos;
		}
	}

	if hspeed > -(_hSpeedMax-(_hSpeedMax/2)){
		hspeed -= _hFric * (obj_lines._speed / 10);
	}
	_score ++;
	
	//spawn walls
	if (irandom(640) == 1){
		instance_create_layer(WINDOW.WIDTH, WINDOW.HEIGHT / 2, "Instances", obj_laser);
	}
	//shooting
	if (_shoot){
		if (!_shot){
			_shooting = 1;
			_shot = 1;
		}
	}
	if (_shot){
		if (_shooting){
			_shootLen--;
			if (_shootLen <= 0){
				_shooting = 0;
				_shootLen = 32;
			}
		}
		_reload --;
		if (_reload <= 0){
			_reload = 64;
			_shot = 0;
		}
	}
}
else{
	speed = 0;
	x -= obj_lines._speed;
	if (_deadLen < 500){
		_deadLen += 40;;
	}
	else if (_deadLen2 > 0){
		_deadLen2 -= 19;
	}
}