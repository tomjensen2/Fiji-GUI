function [theta,rho] = cart2compass(u,v)

[theta,rho] = cart2pol(u,v);

theta = theta*180/pi;

idx = find(theta<0);
theta(idx) = 360 + theta(idx);

idx = find(theta>=0&theta<90);
theta_comp(idx,1) = abs(theta(idx) - 90);

idx = find(theta>=90&theta<=360);
theta_comp(idx,1) = abs(450 - theta(idx));

theta = theta_comp;
