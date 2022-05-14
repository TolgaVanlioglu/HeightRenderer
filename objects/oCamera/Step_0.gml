var wid = camera_get_view_width(view_camera[0]);

if(keyboard_check(ord("E")))
{
	camera_set_view_size(view_camera[0], wid-zoomspd, wid-zoomspd);
	zoomspd = wid/64;
	//camx += camera_get_view_width(view_camera[0])/2;
	//camy += camera_get_view_height(view_camera[0])/2;
}
else if(keyboard_check(ord("Q")))
{
	camera_set_view_size(view_camera[0], wid+zoomspd, wid+zoomspd);
	zoomspd = wid/64;
	//camx += camera_get_view_width(view_camera[0])/2;
	//camy += camera_get_view_height(view_camera[0])/2;
}

var movedown = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var moveright = keyboard_check(ord("D")) - keyboard_check(ord("A"));

camx += moveright*camera_get_view_width(view_camera[0])/128;
camy += movedown*camera_get_view_height(view_camera[0])/128;

camera_set_view_pos(view_camera[0], camx-wid/2, camy-wid/2);
