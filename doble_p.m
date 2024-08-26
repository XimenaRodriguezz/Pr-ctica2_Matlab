% Definir la función del sistema de ecuaciones 
function dy = doble_p(t, y)
% Definir parámetros
m1 = 0.2; m2 = 0.1; l1 = 0.3; l2 = 0.25; g = 9.81; c1 = 0.2;

    theta1 = y(1);
    theta2 = y(2);
    dtheta1 = y(3);
    dtheta2 = y(4);
    
    % Ecuaciones diferenciales
    dy = zeros(4,1);
    dy(1) = dtheta1;
    dy(2) = dtheta2;
    
    delta = theta2 - theta1;
    den1 = (m1 + m2) * l1 - m2 * l1 * cos(delta)^2;
    dy(3) = (m2 * l1 * dtheta1^2 * sin(delta) * cos(delta) + m2 * g * sin(theta2) * cos(delta) + m2 * l2 * dtheta2^2 * sin(delta) - (m1 + m2) * g * sin(theta1)) / den1;
    
    den2 = (l2 / l1) * den1;
    dy(4) = (-m2 * l2 * dtheta2^2 * sin(delta) * cos(delta) + (m1 + m2) * (g * sin(theta1) * cos(delta) - l1 * dtheta1^2 * sin(delta) - g * sin(theta2))) / den2;