fil = input("Ingrese el número de filas: ");
col = input("Ingrese el número de columnas: ");

matriz1 = zeros(fil, col);
matriz2 = zeros(fil, col);

for i = 1:fil
    for j = 1:col
        prompt = sprintf("Ingrese el elemento (%d, %d) de la primera matriz: ", i, j);
        matriz1(i, j) = input(prompt);
        prompt = sprintf("Ingrese el elemento (%d, %d) de la segunda matriz: ", i, j);
        matriz2(i, j) = input(prompt);
    end
end

suma = matriz1 + matriz2;

resta = matriz1 - matriz2;

disp("Primera matriz:");
disp(matriz1);
disp("Segunda matriz:");
disp(matriz2);
disp("Suma de las matrices:");
disp(suma);
disp("Resta de las matrices:");
disp(resta);
