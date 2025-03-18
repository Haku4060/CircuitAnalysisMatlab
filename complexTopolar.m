function [m,thetad,quad] = complexTopolar(real,image)
% The function return 3 outputs please gives 3 output parameter
% The function return M as Magnitude
% The function return thetad as angle in degree
% The function return quad as quadrant to support you to make sure the
% input is correct

m = sqrt(real^2+image^2);
%First quadrand
if real > 0 && image > 0
    thetad = atand(abs(image/real));
    quad = 1;
%Second quafrand
elseif real < 0 && image > 0
    thetad = 180-atand(abs(image/real));
    quad = 2;
%Third quafrand
elseif real < 0 && image < 0
    thetad = 180+atand(abs(image/real));
    quad = 3;
%Forth quafrand
elseif real > 0 && image < 0
    thetad = -atand(abs(image/real));
    quad = 4;
elseif image == 0
    thetad = 0;
    quad = NaN;
elseif real == 0
    disp("Denominator is 0 it is invalid expression")
    thetad = NaN;
    quad = NaN;
else 
    disp("Invalid expression")
    thetad = NaN;
    quad = NaN;
end

formatSpec1 = 'Input: %0.3f+j%0.3f\n\n';
formatSpec2 = 'M = %0.4f\ntheta = %0.4f\nThe complex number located in %0.0f quadrant\n\n';
formatSpec3 = '%0.4f ( %0.4f )\n';

fprintf(formatSpec1, real, image);
fprintf(formatSpec2, m, thetad, quad);
fprintf(formatSpec3, m, thetad);
end