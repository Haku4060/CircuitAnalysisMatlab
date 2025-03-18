function [real,image] = polarTocomplex(m,theta)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
real = m*cosd(theta);
image = m*sind(theta);

formatdspec = '\n%0.4f+j%0.4f\n';
fprintf(formatdspec, real, image);
end