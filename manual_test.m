function manual_test()

theta1=rand(3,5);
theta2=rand(4,4);
theta3=rand(3,5);

x=[0.1;0.2;0.3;0.4];
y=[0.2;0.3;0.4];

outputh1=activation(theta1*[1;x]);
outputh2=activation(theta2*[1;outputh1]);
output=  activation(theta3*[1;outputh2]);

erro=output-y;
errh2=(theta3'*erro).*deriv_activ(theta2*[1;outputh1]);
errh2=errh2(2:size(errh2),1);
errh1=(theta2'*errh2).*deriv_activ(theta1*[1;x]);
errh1=errh1(2:size(errh1),1);

delta1=errh1*x';
delta2=errh2*outputh1';
delta3=erro*outputh2';

temp=[zeros(size(theta1)(1),1) theta1(:,2:size(theta1)(2))];
temp2=temp(:);
deriv1=delta1+2*temp;
temp=[zeros(size(theta2)(1),1) theta2(:,2:size(theta2)(2))];
temp2=[temp2;temp(:)];
deriv2=delta2+2*temp;
temp=[zeros(size(theta3)(1),1) theta3(:,2:size(theta3)(2))];
temp2=[temp2;temp(:)];
deriv3=delta3+2*temp;

m=1;
lambda=2;
h=output;
J=((1/m)*sum(-y.*log(h) - (1-y).*log(1-h))) + (lambda/(2*m))*(sum(temp2.^2));
b=J;

%for i=1:3
%	temp2(i,1)+=0.0001;
%	a=((1/m)*sum(-y.*log(h) - (1-y).*log(1-h))) + (lambda/(2*m))*(sum(temp.^2));
%	temp2(i,1)-=0.0001;
%	q=(a-b)/0.0001;
%	for j=2:5
		

end
