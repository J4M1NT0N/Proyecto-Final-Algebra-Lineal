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

    determinante = det(matriz);

    if determinante == 0
        disp("La matriz no tiene inversa porque su determinante es cero.");
    else
        adjunta = adjugate(matriz);

        inversa = adjunta / determinante;

        disp("Matriz original:");
        disp(matriz);
        disp("Inversa de la matriz:");
        disp(inversa);
    end
end

function adj = adjugate(A)
    [n, ~] = size(A);
    adj = zeros(n);
    for i = 1:n
        for j = 1:n
            cofactor = (-1)^(i+j) * det(submatrix(A, i, j));
            adj(j, i) = cofactor;
        end
    end
end

function sub = submatrix(A, r, c)
    sub = A([1:r-1, r+1:end], [1:c-1, c+1:end]);
end
