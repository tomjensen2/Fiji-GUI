function h = circle(handle,x,y,r)
hold(handle,'on') 
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
hold(handle,'off')
end