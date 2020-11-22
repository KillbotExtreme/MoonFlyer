//Converts 0° to the right, anti-clockwise rotation to 
//0° to the top, clockwise rotation
function survey_angle(math_angle){
	i=((180 - math_angle - 90)+360) mod 360;
	return i;
}