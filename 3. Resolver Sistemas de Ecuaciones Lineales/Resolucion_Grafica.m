tam_ecu = input("Ingrese el tamaño del sistema de ecuacines a calcular (2,3 o 4):");

if tam_ecu < 2 || tam_ecu > 4
    disp("Este código es solo para sistemas de 2x2, 3x3 o 4x4. Por favor, ingrese un valor válido.");
else
    Matriz = zeros(tam_ecu, tam_ecu);
    Vector = zeros(tam_ecu, 1);

    disp(['Ingrese las ecuaciones en el formato "Ax + By = C" (para 2x2), ' ...
          '"Ax + By + Cz = D" (para 3x3) o "Ax + By + Cz + Dw = E" (para 4x4):']);
    
    for i = 1:tam_ecu
        prompt = sprintf("Ecuación %d: ", i);
        ecuacion = input(prompt, "s");
        
        parsed_eq = sscanf(ecuacion, "%fx %fy %fz %fw = %f");
        Matriz(i, 1:length(parsed_eq)-1) = parsed_eq(1:end-1);
        Vector(i) = parsed_eq(end);
    end

    if tam_ecu == 2
        ecu1 = @(x) (Vector(1) - Matriz(1,1)*x) / Matriz(1,2);
        ecu2 = @(x) (Vector(2) - Matriz(2,1)*x) / Matriz(2,2);
        
        figure;
        fplot(ecu1, [-10, 10], "r", "LineWidth", 2);
        hold on;
        fplot(ecu2, [-10, 10], "b", "LineWidth", 2);
        
        xlabel("Eje X");
        ylabel("Eje Y");
        title("Resolución Gráfica de un Sistema de Ecuaciones Lineales 2D");
        
        [x_interseccion, y_interseccion] = ginput(1);
        
        plot(x_interseccion, y_interseccion, "go", "MarkerSize", 10);
        
        legend("Ecuación 1", "Ecuación 2", "Intersección", "Location", "Best");
        
        fprintf("La solución del sistema es (x, y) = (%.2f, %.2f)\tam_ecu", x_interseccion, y_interseccion);
        
        if isinf(x_interseccion) || isnan(x_interseccion) || isinf(y_interseccion) || isnan(y_interseccion)
            disp("El sistema no tiene solución o tiene soluciones infinitas.");
        else
            disp("El sistema tiene una solución única.");
        end
        
        grid on;
        hold off;
        
    elseif tam_ecu == 3
        ecu1 = @(x, y) (Vector(1) - Matriz(1,1)*x - Matriz(1,2)*y) / Matriz(1,3);
        ecu2 = @(x, y) (Vector(2) - Matriz(2,1)*x - Matriz(2,2)*y) / Matriz(2,3);
        
        figure;
        [X, Y] = meshgrid(-10:0.5:10, -10:0.5:10);
        Z1 = ecu1(X, Y);
        Z2 = ecu2(X, Y);
        
        surf(X, Y, Z1, "FaceColor", "r", "EdgeColor", "none");
        hold on;
        surf(X, Y, Z2, "FaceColor", "b", "EdgeColor", "none");
        
        xlabel("Eje X");
        ylabel("Eje Y");
        zlabel("Eje Z");
        title("Resolución Gráfica de un Sistema de Ecuaciones Lineales 3D");
        
        [x_interseccion, y_interseccion] = ginput(1);
        
        z_interseccion = ecu1(x_interseccion, y_interseccion);
        
        plot3(x_interseccion, y_interseccion, z_interseccion, "go", "MarkerSize", 10);
        
        legend("Ecuación 1", "Ecuación 2", "Intersección", "Location", "Best");
        
        fprintf("La solución del sistema es (x, y, z) = (%.2f, %.2f, %.2f)\tam_ecu", x_interseccion, y_interseccion, z_interseccion);
        
        if isnan(x_interseccion) || isnan(y_interseccion) || isnan(z_interseccion)
            disp("El sistema no tiene solución o tiene soluciones infinitas.");
        else
            disp("El sistema tiene una solución única.");
        end
        
        grid on;
        hold off;
        
    elseif tam_ecu == 4
        ecu1 = @(x, y, z) (Vector(1) - Matriz(1,1)*x - Matriz(1,2)*y - Matriz(1,3)*z) / Matriz(1,4);
        ecu2 = @(x, y, z) (Vector(2) - Matriz(2,1)*x - Matriz(2,2)*y - Matriz(2,3)*z) / Matriz(2,4);
        
        figure;
        [X, Y] = meshgrid(-10:0.5:10, -10:0.5:10);
        Z1 = ecu1(X, Y, Z);
        Z2 = ecu2(X, Y, Z);
        
        surf(X, Y, Z1, "FaceColor", "r", "EdgeColor", "none");
        hold on;
        surf(X, Y, Z2, "FaceColor", "b", "EdgeColor", "none");
        
        xlabel("Eje X");
        ylabel("Eje Y");
        zlabel("Eje Z");
        title("Resolución Gráfica de un Sistema de Ecuaciones Lineales 3D");
        
        [x_interseccion, y_interseccion] = ginput(1);
        
        z_interseccion = ecu1(x_interseccion, y_interseccion);
        
        plot3(x_interseccion, y_interseccion, z_interseccion, "go", "MarkerSize", 10);
        
        legend("Ecuación 1", "Ecuación 2", "Intersección", "Location", "Best");
        
        fprintf("La solución del sistema es (x, y, z) = (%.2f, %.2f, %.2f)\tam_ecu", x_interseccion, y_interseccion, z_interseccion);
        
        if isnan(x_interseccion) || isnan(y_interseccion) || isnan(z_interseccion)
            disp("El sistema no tiene solución o tiene soluciones infinitas.");
        else
            disp("El sistema tiene una solución única.");
        end
        
        grid on;
        hold off;
    end
end
