//Converts 0° to the right, anti-clockwise rotation to 
//0° to the top, clockwise rotation
function math_angle(Survey_Angle){
	i=((180 - Survey_Angle - 90)+360) mod 360;
	return i;
}