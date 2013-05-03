function calc_out_pos()

global pos_out;
global neural_dist;
global x;

cols=size(x)(2);
pos_out=1;

for i=2:(size(neural_dist)(1))+1
pos_out=[pos_out pos_out(i-1)+neural_dist(i-1)*cols];
endfor


end
