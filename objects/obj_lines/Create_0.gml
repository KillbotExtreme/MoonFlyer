/// @description Initialise variables
// You can write your code in this editor

//side scroller with randomly generated levels built from lines determined by co-ords

//initial variables
_speed = 8;
_sep =128;
num=32;
_lineSep = 64;

enum WINDOW{
	WIDTH = 1920,
	HEIGHT = 1080
}

//create x points for lines
_x1 = array_create(num);
_x2 = array_create(num);
//create y points for lines
_y1 = array_create(num);
_y2 = array_create(num);

//set initial x&y points
for (var i = 0; i < num; i++){
	_x1[i] = room_width + (_lineSep*i);
	_x2[i] = room_width + (_lineSep*i);
	_y1[i] = room_height * (1/4);
	_y2[i] = room_height * (3/4);
}








