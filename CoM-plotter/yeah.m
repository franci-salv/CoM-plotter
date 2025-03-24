%data
%1 main body: 390 grams - 16 cm w - 14 cm l - 3.25 cm h 
%2 wheels:  63 g  - 3.15 cm r - 2.65 cm w
%3 servo: 55g - 5.36 cm h - 2 cm w - 4.76 cm l
%4 Arduino uno 25 g - 4.84 cm w - 6.34 cm l - 1 cm h
%5 inner legs 100g - 14 cm l - 3 cm h - 1 cm w
%6 outer legs 100g - 14 cm l - 3 cm h - 1 cm w

function CoMcoordinates = coordinates(m, x, y)
    % CoMcoordinates: calculates the coordinates of the center of mass at
    % all times
    %
    % Input:
    %    - mass of components
    %    - x coordinates
    %    - y coordinates
    % Output:
    %    - the coordinates of the CoM

    % Compute center of mass
    x_cm = sum(m .* x) / sum(m);
    y_cm = sum(m .* y) / sum(m);
    CoMcoordinates = [x_cm, y_cm, z_cm];

    fprintf('Center of Mass (X, Y, Z): (%.2f, %.2f, %.2f)\n', x_cm, y_cm, z_cm);

end



% masses and coordinates test values
m = [0.39, 0.063, 0.055, 0.025, 0.1, 0.1];  % Masses of components
% main body, wheel1, wheel2,
% servo1,servo2,servo3,servo4,servo5,servo6, arduino,leg1,leg2,leg3,leg4
x = [0.07, 0.025, 0.135, , ,,0.0238, , 4];  % X-coordinates
y = [0.08, 0.095, 0.095, , ,,0.025, , 6];  % Y-coordinates
z = [0, 0.0315, 0.0315 , 0.0268 , 0.0268, 0.0268,0.00268, , 4];  % Z-coordinates test values

CoMcoordinates = coordinates(m, x, y);





% Set up figure
figure;
hold on;
grid on;
axis([0 8 0 5]); % Set axis limits

% Define the stair steps (each segment as [x1, x2], [y1, y2])
stairs_x = [0, 3, 3, 4, 4, 7]; % X-coordinates for stair steps
stairs_y = [0, 0, 1, 1, 2, 2]; % Y-coordinates for stair steps

% Plot each segment as a separate line and label them
for i = 1:length(stairs_x)-1
    line([stairs_x(i) stairs_x(i+1)], [stairs_y(i) stairs_y(i+1)], ...
        'Color', 'b', 'LineWidth', 2); % Draw each segment in blue
    
    % Compute label position slightly offset from the line
    text_x = (stairs_x(i) + stairs_x(i+1)) / 2; % Midpoint of x
    text_y = (stairs_y(i) + stairs_y(i+1)) / 2; % Midpoint of y
    text(text_x, text_y, 'stairs', 'FontSize', 10, 'Color', 'r', ...
        'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
end

% Label axes and title
xlabel('X-axis');
ylabel('Y-axis');
title('Stairs Plot');
hold off;

