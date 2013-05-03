function [g] = deriv_activ(z)

temp=activation(z);
g=temp.*(1-temp);

end
