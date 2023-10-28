tam_ecu = input("Ingrese el tamaño del sistema de ecuacines a calcular (2,3 o 4): ");

Matriz = zeros(tam_ecu, tam_ecu);
Vector = zeros(tam_ecu, 1);

disp("Ingrese los coeficientes de las ecuaciones:");
for i = 1:tam_ecu
    for j = 1:tam_ecu
        prompt = sprintf("Ingrese el coeficiente de la Matriz(%d,%d): ", i, j);
        Matriz(i, j) = input(prompt);
    end
    prompt = sprintf("Ingrese el término independiente del vector(%d): ", i);
    Vector(i) = input(prompt);
end

disp("Matriz de coeficientes:");
disp(Matriz);
disp("Vector de términos independientes:");
disp(Vector);

det_matriz = det(Matriz);

if det_matriz ~= 0
    solutions = zeros(n, 1);
    
    for i = 1:n
        Matriz_i = Matriz;
        Matriz_i(:, i) = Vector;
        det_matriz_i = det(Matriz_i);
        solucion(i) = det_matriz_i / det_matriz;
    end
    
    disp("Solución del sistema:");
    disp(solucion);
    
    if rank([Matriz, Vector]) < rank(Matriz)
        disp("El sistema tiene soluciones infinitas.");
    else
        disp("El sistema tiene solución única.");
    end
else
    disp("El sistema no tiene solución.");
end
