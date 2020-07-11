data = load('DatosSInCabecera.txt'); %Se carga la matriz original
X = data(:, 1:end-1); %Se separan los datos X de la matriz original
y = data(:,end);%Se separan los datos Y de la matriz original
m = length(y); %Se obtiene el numero de filas del vector Y

[X mu sigma] = normalizacion(X); %Se normalizan los datos en X retornando el valor Mu y Sigma

X = [ones(m, 1) X]; %Se añade la columna 1 de activacion
%%Descenso de gradiente
alpha = 0.1; %Se selecciona un valor de ajuste
num_iters = 150; %Se inicializa el numero de iteraciones 
theta = zeros(8, 1); %Se crea una matriz 8x1 para los pesos 
[theta, J_history] = gradiente(X, y, theta, alpha, num_iters); %Se calcula el descenso del gradiente
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2); %Se grafica el costo de la funcion 
price = 0; % Se inicializa el valor del precio que es el valor a predecir
prediction = [1,29.498886,20.934557,31.361678,2.6,24.48,3700,19.653]; %Se ingresan datos para predecir
prediction %Se imprime la predicción 

prediction(:,2:end) = (prediction(:,2:end) .- mu )./ sigma; %Se calcula el valor del error real
price = sum(theta' .* prediction) %Se calcula el costo total

%%Ecuacion Normal
theta = ecuacionNormal(X, y); %Se calculan los pesos a partir de la ecuacion normal
price = 0; % Se inicializa el valor del precio que es el valor a predecir
prediction = [1,29.498886,20.934557,31.361678,2.6,24.48,3700,19.653];%Se ingresan datos para predecir
prediction(:,2:end) = (prediction(:,2:end) .- mu )./ sigma;%Se calcula el valor del error real
price = sum(theta' .* prediction) %Se calcula el costo total

