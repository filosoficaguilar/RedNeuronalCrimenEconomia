function [theta, J_history] = gradiente(X, y, theta, alpha, num_iters)
% gradiente realiza el desceso del gradiente para aprender theta
%   theta = gradiente(x, y, theta, alpha, num_iters) actualiza theta 
%   tomando num_iters (numero de iteraciones) pasos del gradiente con la tasa de aprendizaje alpha

m = length(y); % Numero de datos
J_history = zeros(num_iters, 1);

for iter = 1:num_iters %Se itera desde 1 hasta el numero de iteraciones

    % Se considera la funcion de J(theta) = Theta(j)-(1/m)*alpha*suma (Htheta(x(i)) - y) * x(i)

    hypothesis =  X * theta ; %Se obtiene el valor de la hipotesis [h(X(i))] que es el valor de ajuste o prediccion
    eq1 = (hypothesis-y).*X;
    j =  (alpha/m) * sum(eq1); %Se calcula J con la formula de J(theta)
    theta = theta.-j';   %Se obtiene la diferencia entre theta y el valor predicho de theta

    % ============================================================

    % Se guarda el valor de theta en cada iteracion
    J_history(iter) = costo(X, y, theta);

end

end
