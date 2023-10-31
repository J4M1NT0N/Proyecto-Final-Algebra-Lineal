fil = input("Ingrese el número de filas de las matrices: ");
col = input("Ingrese el número de columnas de las matrices: ");

matriz1 = zeros(fil, col);
matriz2 = zeros(fil, col);

disp("Ingrese los elementos de la primera matriz:");
for i = 1:fil
    for j = 1:col
        prompt = sprintf("Ingrese el elemento (%d, %d) de la primera matriz: ", i, j);
        matriz1(i, j) = input(prompt);
    end
end

disp("Ingrese los elementos de la segunda matriz:");
for i = 1:fil
    for j = 1:col
        prompt = sprintf("Ingrese el elemento (%d, %d) de la segunda matriz: ", i, j);
        matriz2(i, j) = input(prompt);
    end
end

resultado = matriz1 * matriz2;

disp("Primera matriz:");
disp(matriz1);
disp("Segunda matriz:");
disp(matriz2);
disp("Resultado de la multiplicación de las matrices:");
disp(resultado);
