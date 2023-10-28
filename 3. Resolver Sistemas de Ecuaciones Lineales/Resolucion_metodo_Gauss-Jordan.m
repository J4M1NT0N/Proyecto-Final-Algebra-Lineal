tam_ecu = input("Ingrese el tamaño del sistema de ecuacines a calcular (2,3 o 4):");

matriz = zeros(tam_ecu, tam_ecu);
vector = zeros(tam_ecu, 1);

disp("Ingrese los coeficientes de las ecuaciones:");
for i = 1:tam_ecu
    for j = 1:tam_ecu
        prompt = sprintf("Ingrese el coeficiente de la Matriz(%d,%d): ", i, j);
        matriz(i, j) = input(prompt);
    end
    prompt = sprintf("Ingrese el término independiente del vector(%d): ", i);
    vector(i) = input(prompt);
end

disp("Matriz original:");
disp(matriz);
disp("Vector de términos independientes:");
disp(vector);

aumatriz = [matriz, vector];

for diagofila = 1:tam_ecu
    diagonal = aumatriz(diagofila, diagofila);
    aumatriz(diagofila, :) = aumatriz(diagofila, :) / diagonal;

    for fila = 1:tam_ecu
        if fila ~= diagofila
            factor = aumatriz(fila, diagofila);
            aumatriz(fila, :) = aumatriz(fila, :) - factor * aumatriz(diagofila, :);
        end
    end
end

disp("Solución del sistema:");
solucion = aumatriz(:, end);
disp(solucion);

solucion = aumatriz(:, end);
if any(isinf(solucion)) || any(isnan(solucion))
    disp("El sistema tiene soluciones infinitas.");
elseif any(aumatriz(:, end) == 0)
    disp("El sistema tiene una solución única.");
else
    disp("El sistema no tiene solución.");
end
