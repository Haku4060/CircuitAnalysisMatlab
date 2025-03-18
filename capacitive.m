function [capInPhase] = capacitive(omega, farad)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
capInPhase = 1/(omega*farad);
formatspce = '\n-j%0.4f Ω\n';
fprintf(formatspce, capInPhase);
end