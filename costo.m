function J = costo(X, y, theta)
% costo() calcula el costo para la regresion lineal con multiples variables
%   J = costo(X, y, theta) calcula el coso usando theta como el 
%   parametro para regresion lineal para ajustar los puntos en X y "y"   

% Se inicializan las variables
m = length(y); % El numero de datos

J = 0;
 
%La funcion que se calcula aqui es J(theta) = (1/2m) * (X*theta-y)' *(X*theta-y)
eq = 1 / (2*m); %Parametro 1 de la ecuacion
predict = X*theta-y; %Se obtiene el factor comun que es el producto de theta por X menos y
J = eq*predict'*predict; %Se obtiene el valor de J multiplicando el primer producto por el factor comun transpuesto por el factor comun


% =========================================================================

end