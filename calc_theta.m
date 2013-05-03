function [theta] = calc_theta(index)

global thetas;
global neural_dist;
global pos_theta;

theta=reshape(thetas(pos_theta(index):(pos_theta(index+1)-1)),neural_dist(index+1),(neural_dist(index)+1));

end
