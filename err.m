function [d] = err(index)

global errs;
global pos_out;
global neural_dist;
global x;

if index==1
fprintf "ERROR: LAYER 1 HAS NO ERROR"
endif

d=reshape(errs(pos_out(index):(pos_out(index+1)-1)) , neural_dist(index) , size(x)(2));

end
