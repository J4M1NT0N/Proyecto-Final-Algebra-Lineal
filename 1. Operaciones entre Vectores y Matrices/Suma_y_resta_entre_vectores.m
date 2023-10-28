longvector = input("Ingrese la longitud de los vectores: ");

vector1 = zeros(1, longvector);
vector2 = zeros(1, longvector);

for i = 1:longvector
    prompt = sprintf("Ingrese el elemento %d del primer vector: ", i);
    vector1(i) = input(prompt);
    prompt = sprintf("Ingrese el elemento %d del segundo vector: ", i);
    vector2(i) = input(prompt);
end

suma = vector1 + vector2;

resta = vector1 - vector2;

disp("Primer vector:");
disp(vector1);
disp("Segundo vector:");
disp(vector2);
disp("Suma de los vectores:");
disp(suma);
disp("Resta de los vectores:");
disp(resta);
