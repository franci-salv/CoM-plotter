%step 1 we need to calculate where this center of mass is so:

% masses and coordinates test values
m = [5, 3, 4, 2, 6];  % Masses of components
x = [2, 6, 8, 1, 4];  % X-coordinates
y = [3, 5, 7, 2, 6];  % Y-coordinates
z = [1, 2, 3, 0, 4];  % Z-coordinates test values

% Compute center of mass
x_cm = sum(m .* x) / sum(m);
y_cm = sum(m .* y) / sum(m);
z_cm = sum(m .* z) / sum(m);

% Display results
fprintf('Center of Mass (X, Y, Z): (%.2f, %.2f, %.2f)\n', x_cm, y_cm, z_cm);



x = linspace(0, 10, 100); % Generates 100 points between 0 and 10
y1 = cos(x); % Compute the sine function

plot(x, y); % Plot the function
xlabel('horizontal (m)'); % Label x-axis
ylabel('vertical (m)'); % Label y-axis
title('track CoM plot'); % Add a title
grid on; % Enable grid
