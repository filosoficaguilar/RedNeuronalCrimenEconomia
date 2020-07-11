function [X_norm, mu, sigma] = normalizacion(X)
%   NORMALIZACION DE VARIABLES: Se normalizan las variables en X
%   normalizacion(X) retorna una version normalizada de X donde
%   el valor de la media de cada variable es 0 y la desviacion estandar   
%   es 1. Esto    a menudo es un buen paso de procesamiento para hacer cuando
%   se trabaja con algoritmos de aprendizaje   

% Se tienen que inciar estas variables correctamente
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
% ============================================================

mu = mean(X); %mu es el valor de la media, se obtiene mediante la funcion mean()
sigma = std(X); %sigma es el rango, se obtiene como la diferencia entre el valor maximo menos el valor minimo con la funcion std()
X_norm = (X .- mu) ./sigma; % X_norm es el valor normalizado de X donde se aplica la formula X-mu/sigma  ó cada valor de X menos el valor de la media todo entre el rango


end
