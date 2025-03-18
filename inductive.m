function [indInPhase] = inductive(omega, henry)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
indInPhase = omega*henry;
formatspce = '\nj%0.4f Ω\n';
fprintf(formatspce, indInPhase);
end