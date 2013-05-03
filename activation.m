function [g] = activation(z)

g= 1.0 ./ (1.0 + exp(-z) );

end
