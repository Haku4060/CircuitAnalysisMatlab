function [degree] = trigConverter(fcs, value, phai)
%cos to other
if strcmp(fcs, 'cos') && strcmp(value, 'sin')
    degree = phai+90;
elseif strcmp(fcs, 'cos') && strcmp(value, '-sin')
    degree = phai-90;
elseif strcmp(fcs, 'cos') && strcmp(value, '-cos')
    degree = phai+180;
%-cos to other
elseif strcmp(fcs, '-cos') && strcmp(value, 'sin')
    degree = phai-90;
elseif strcmp(fcs, '-cos') && strcmp(value, '-sin')
    degree = phai+90;
elseif strcmp(fcs, '-cos') && strcmp(value, 'cos')
    degree = phai+180;
%sin to other
elseif strcmp(fcs, 'sin') && strcmp(value, 'cos')
    degree = phai-90;
elseif strcmp(fcs, 'sin') && strcmp(value, '-cos')
    degree = phai+90;
elseif strcmp(fcs, 'sin') && strcmp(value, '-sin')
    degree = phai+180;
%-sin to other
elseif strcmp(fcs, '-sin') && strcmp(value, 'cos')
    degree = phai+90;
elseif strcmp(fcs, '-sin') && strcmp(value, '-cos')
    degree = phai-90;
elseif strcmp(fcs, '-sin') && strcmp(value, 'sin')
    degree = phai+180;
end