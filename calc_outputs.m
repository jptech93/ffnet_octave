function calc_outputs()

global thetas;
global neural_dist;
global x;
global outputs;
global bias;

outputs=x(:);
prev_layer_output=x;

for layer=2:size(neural_dist)(1)

prev_layer_output = [ones( 1,size(prev_layer_output)(2) ) ; prev_layer_output];
prev_layer_output =  activation( calc_theta(layer-1)*prev_layer_output );
outputs=[outputs(:) ; prev_layer_output(:)];

endfor

end
