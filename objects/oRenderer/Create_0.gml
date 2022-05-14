spriteH = sSprite;
spriteCol = sSprite2;
mult = 1;
xs = 64//sprite_get_width(spriteH);
ys = 64//sprite_get_height(spriteH);
var surf = surface_create(xs,ys);
surface_set_target(surf);
draw_sprite(spriteH, 0, 0, 0);
surface_reset_target();

for(var a = 0; a < ys; a++)
{
	for(var b = 0; b < xs; b++)
	{
		dots[a,b][0] = surface_getpixel(surf, a, b);
		dots[a,b][1] = color_get_value(dots[a,b][0]);
		dots[a,b][2] = 255;
		
		dists[a,b][0] = sqrt(sqr(a-xs/2) + sqr(b-ys/2))//-(64*sqrt(2))/2;
		dists[a,b][1] = point_direction(0, 0, a-xs/2, b-ys/2);
	}
}

surface_set_target(surf);
draw_sprite(spriteCol, 1, 0, 0);
surface_reset_target();

for(var a = 0; a < xs; a++)
{
	for(var b = 0; b < ys; b++)
	{
		dots[a,b][0] = surface_getpixel(surf, a, b);
	}
}

for(var a = 2; a < xs-2; a++)
{
	for(var b = 2; b < ys-2; b++)
	{
		dots[a,b][2] -= 8*(dots[a+1,b][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a,b+1][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a+1,b+1][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a+2,b][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a,b+2][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a+2,b+2][1] > dots[a,b][1]);
		
		dots[a,b][2] -= 8*(dots[a+1,b+2][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a+2,b+1][1] > dots[a,b][1]);
		
		dots[a,b][2] -= 8*(dots[a-1,b][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a,b-1][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a-1,b-1][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a-2,b][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a,b-2][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a-2,b-2][1] > dots[a,b][1]);
		
		dots[a,b][2] -= 8*(dots[a-1,b-2][1] > dots[a,b][1]);
		dots[a,b][2] -= 8*(dots[a-2,b-1][1] > dots[a,b][1]);
		
		dots[a,b][0] = make_color_hsv(color_get_hue(dots[a,b][0]), color_get_saturation(dots[a,b][0]), dots[a,b][2]);
	}
}

dis = 0;
ang = 0;
dcs = 0;
dsn = 0;


