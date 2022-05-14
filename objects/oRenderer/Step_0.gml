var rot = keyboard_check(vk_left) - keyboard_check(vk_right);
var multr = keyboard_check(vk_up) - keyboard_check(vk_down);
image_angle += rot*2;
if(image_angle < 0)
	image_angle += 360;
else if(image_angle >= 360)
	image_angle -= 360;
mult += multr*0.05;
