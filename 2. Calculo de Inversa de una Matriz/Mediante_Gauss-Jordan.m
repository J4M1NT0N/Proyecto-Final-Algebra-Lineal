fil = input("Ingrese el número de filas de la matriz: ");
col = input("Ingrese el número de columnas de la matriz: ");

if fil ~= col
    disp("La matriz debe ser cuadrada para calcular su inversa.");
else
    matriz = zeros(fil, col);

    for i = 1:fil
        for j = 1:col
            prompt = sprintf("Ingrese el elemento (%d, %d) de la matriz: ", i, j);
            matriz(i, j) = input(prompt);
        end
    end

    identidad = eye(filas);

    for i = 1:fil
        divisor = matriz(i, i);
        matriz(i, :) = matriz(i, :) / divisor;
        identidad(i, :) = identidad(i, :) / divisor;

        for j = 1:fil
            if j ~= i
                factor = matriz(j, i);
                matriz(j, :) = matriz(j, :) - factor * matriz(i, :);
                identidad(j, :) = identidad(j, :) - factor * identidad(i, :);
            end
        end
    end

    inversa = identidad;

    disp("Matriz original:");
    disp(matriz);
    disp("Inversa de la matriz:");
    disp(inversa);
end
