escalar = input("Ingrese el número escalar: ");

longvector = input("Ingrese la longitud del vector: ");

vector = zeros(1, longvector);

for i = 1:longvector
    prompt = sprintf("Ingrese el elemento %d del vector: ", i);
    vector(i) = input(prompt);
end

resultado = escalar * vector;

disp("Vector ingresado:");
disp(vector);
disp("Resultado de la multiplicación escalar:");
disp(resultado);
