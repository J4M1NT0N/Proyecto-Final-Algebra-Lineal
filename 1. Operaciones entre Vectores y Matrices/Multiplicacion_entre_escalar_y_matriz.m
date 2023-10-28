escalar = input("Ingrese el número escalar: ");

fil = input("Ingrese el número de filas de la matriz: ");
col = input("Ingrese el número de columnas de la matriz: ");

matriz = zeros(fil, col);

for i = 1:fil
    for j = 1:col
        prompt = sprintf("Ingrese el elemento (%d, %d) de la matriz: ", i, j);
        matriz(i, j) = input(prompt);
    end
end

resultado = escalar * matriz;

disp("Matriz original:");
disp(matriz);
disp("Resultado de la multiplicación:");
disp(resultado);
