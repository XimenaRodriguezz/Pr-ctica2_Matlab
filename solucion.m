% Resolver el sistema usando ODE45
[t, y] = ode45(@doble_p, [0,10], [0; (35*pi)/180; 0; 0]);

% Graficar los resultados
figure(1)
plot(t, y(:,1));
xlabel('Tiempo');
ylabel('Ángulo');
title('Movimiento del Doble Péndulo');
grid on;
figure(2)
plot(t, y(:,2));
xlabel('Tiempo ');
ylabel('Ángulo ');
title('Movimiento del Doble Péndulo');
grid on;