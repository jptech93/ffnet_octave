function calc_theta_pos()

global pos_theta;
global neural_dist;

pos_theta=1;

for i=2:(size(neural_dist)(1))
pos_theta=[pos_theta pos_theta(i-1)+(neural_dist(i-1)+1)*neural_dist(i)];
endfor

end
