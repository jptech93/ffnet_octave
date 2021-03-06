function [J,grad]= cost_grad(lambda)

%for accumulation use global var dels and in the end set 
%dels = dels+del and use dels for grad instead of del...

global thetas;
global pos_theta;
global neural_dist;
global x;
global y;
global bias=1;
global pl=0;

calc_outputs();
calc_errs();

h=output_matrix();
m=size(x)(2);

del=err(2)*([bias;output(1)]');

for i=2:size(neural_dist)(1)-1
del=[del(:);(err(i+1)*([bias;output(i)]'))(:)];
endfor

temp=thetas;

for i=2:size(neural_dist)(1)
	for j=1:neural_dist(i)
		temp(pos_theta(i-1)+j-1)=0;
	endfor
endfor

grad=(1/m)*del + lambda*temp;

J=((1/m)*sum(-y.*log(h) - (1-y).*log(1-h))) + (lambda/(2*m))*(sum(temp.^2));

pl=[pl;J];

end
