if(image_angle < 90 || image_angle >= 270)
{
	for(var a = 0; a < ys-1; a++)
	{
		for(var b = 0; b < xs-1; b++)
		{
			//draw_set_color(dots[b,a][0]);
			//draw_circle(x+dists[b,a][0]*dcos(image_angle+dists[b,a][1]), y-dists[b,a][0]*dsin(image_angle+dists[b,a][1])*0.5-dots[b,a][1]*mult, 5, 0)
			/* draw with lines */
			//dcs = dists[b,a][0]*dcos(image_angle+dists[b,a][1]);
			//dsn = dists[b,a][0]*dsin(image_angle+dists[b,a][1])*0.5;
			//draw_set_color(dots[b,a][0]);
			//draw_line_width(x+dcs, y-dsn, x+dcs, y-dsn-dots[b,a][1]*mult, 2);
			//draw_point(x+dis*dcos(image_angle+ang), y-dis*dsin(image_angle+ang));
			//draw_point_color(b, a, dots[b,a][0]);
			
			/* draw with points */
			//draw_point_color(x+dcs, y-dsn-dots[b,a][1]*mult, dots[b,a][0]);
			
			/* draw with polygons */
			//draw_set_color(dots[b,a][0]);
			dcs = x+dists[b,a][0]*dcos(image_angle+dists[b,a][1]);
			dsn = y-dists[b,a][0]*dsin(image_angle+dists[b,a][1])*0.5-dots[b,a][1]*mult;
			dcs2 = x+dists[b,a+1][0]*dcos(image_angle+dists[b,a+1][1]);
			dsn2 = y-dists[b,a+1][0]*dsin(image_angle+dists[b,a+1][1])*0.5-dots[b,a+1][1]*mult;
			dcs3 = x+dists[b+1,a][0]*dcos(image_angle+dists[b+1,a][1]);
			dsn3 = y-dists[b+1,a][0]*dsin(image_angle+dists[b+1,a][1])*0.5-dots[b+1,a][1]*mult;
			dcs4 = x+dists[b+1,a+1][0]*dcos(image_angle+dists[b+1,a+1][1]);
			dsn4 = y-dists[b+1,a+1][0]*dsin(image_angle+dists[b+1,a+1][1])*0.5-dots[b+1,a+1][1]*mult;
			draw_triangle_color(dcs2, dsn2, dcs3, dsn3, dcs, dsn, dots[b,a+1][0], dots[b+1,a][0], dots[b,a][0], 0);
			draw_triangle_color(dcs2, dsn2, dcs3, dsn3, dcs4, dsn4, dots[b,a+1][0], dots[b+1,a][0], dots[b+1,a+1][0], 0);
		}
	}
}
else
{
	for(var a = ys-2; a >= 0; a--)
	{
		for(var b = xs-2; b >= 0; b--)
		{
			/* draw with lines */
			//dcs = dists[b,a][0]*dcos(image_angle+dists[b,a][1]);
			//dsn = dists[b,a][0]*dsin(image_angle+dists[b,a][1])*0.5;
			//draw_set_color(dots[b,a][0]);
			//draw_line_width(x+dcs, y-dsn, x+dcs, y-dsn-dots[b,a][1]*mult, 2);
			//draw_point(x+dis*dcos(image_angle+ang), y-dis*dsin(image_angle+ang));
			//draw_point_color(b, a, dots[b,a][0]);
			
			/* draw with points */
			//draw_point_color(x+dcs, y-dsn-dots[b,a][1]*mult, dots[b,a][0]);
			
			/* draw with polygons */
			//draw_set_color(dots[b,a][0]);
			dcs = x+dists[b,a][0]*dcos(image_angle+dists[b,a][1]);
			dsn = y-dists[b,a][0]*dsin(image_angle+dists[b,a][1])*0.5-dots[b,a][1]*mult;
			dcs2 = x+dists[b,a+1][0]*dcos(image_angle+dists[b,a+1][1]);
			dsn2 = y-dists[b,a+1][0]*dsin(image_angle+dists[b,a+1][1])*0.5-dots[b,a+1][1]*mult;
			dcs3 = x+dists[b+1,a][0]*dcos(image_angle+dists[b+1,a][1]);
			dsn3 = y-dists[b+1,a][0]*dsin(image_angle+dists[b+1,a][1])*0.5-dots[b+1,a][1]*mult;
			dcs4 = x+dists[b+1,a+1][0]*dcos(image_angle+dists[b+1,a+1][1]);
			dsn4 = y-dists[b+1,a+1][0]*dsin(image_angle+dists[b+1,a+1][1])*0.5-dots[b+1,a+1][1]*mult;
			draw_triangle_color(dcs2, dsn2, dcs3, dsn3, dcs, dsn, dots[b,a+1][0], dots[b+1,a][0], dots[b,a][0], 0);
			draw_triangle_color(dcs2, dsn2, dcs3, dsn3, dcs4, dsn4, dots[b,a+1][0], dots[b+1,a][0], dots[b+1,a+1][0], 0);
		}
	}
}

