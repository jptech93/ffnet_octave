function [o] = output(index)

global pos_out;
global outputs;
global neural_dist;
global x;

o=reshape(outputs(pos_out(index):(pos_out(index+1)-1)) , neural_dist(index) , size(x)(2));

end
