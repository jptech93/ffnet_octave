function calc_errs()

global thetas;
global neural_dist;
global x;
global y;
global errs;
global bias=1;

%errs=(output_matrix()-y)(:);
errs=(output_matrix()-y);
temp=errs;

for i=(size(neural_dist)(1)-1):-1:2

%temp = ( ((calc_theta(i)')*temp)(2:neural_dist(i)+1) ).*deriv_activ(calc_theta(i-1)*([bias;output(i-1)(:)]));
temp = ( ((calc_theta(i)')*temp)(2:neural_dist(i)+1,:) ).*deriv_activ(calc_theta(i-1)*([bias*ones(1,size(output(i-1))(2));output(i-1)]));
errs=[ temp(:);errs(:) ];

endfor

temp=zeros(size(x)(1),size(x)(2));
errs=[ temp(:);errs(:) ];

end
