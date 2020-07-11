function [theta] = ecuacionNormal(X, y)
% ecuacionNormal calcula la solucion de forma cerrada para regresion lineal
%   ecuacionNormal(X,y) calcula la solucion del costo cerrado para regresion
%   lineal usando la ecuacion normal

theta = zeros(size(X, 2), 1);

%Se usa la formula Theta = ((X'*X)^⁻1)*X'*y

theta = pinv((X'*X))*X'*y %Se usa la funcion pinv para generar la inverza de la matriz resultante
%X'*X y luego se multiplica por el facto X'*y


% -------------------------------------------------------------


% ============================================================

end
