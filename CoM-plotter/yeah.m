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

plot(x, y1); % Plot the function
xlabel('horizontal (m)'); % Label x-axis
ylabel('vertical (m)'); % Label y-axis
title('track CoM plot'); % Add a title
grid on; % Enable grid





% Generate random vertical lines
num_vlines = 2; % Number of vertical lines
x_positions = randi([1, 10], 1, num_vlines); % Random x positions
for i = 1:num_vlines
    line([x_positions(i) x_positions(i)], [y_start(i) y_end(i)] , '--', 'Color', 'r', 'LineWidth', 1.5);
end

% Generate random horizontal lines
num_hlines = 3; % Number of horizontal lines
y_positions = randi([1, 10], 1, num_hlines); % Random y positions
for i = 1:num_hlines
    line([y_positions(i) y_positions(i)], [x_start(i) x_end(i)] , '--', 'Color', 'b', 'LineWidth', 1.5);
end

title('Random Horizontal and Vertical Lines');
xlabel('X-axis');
ylabel('Y-axis');
hold off;


% Set up figure
figure;
hold on;
grid on;
axis([0 10 0 10]); % Set axis limits

% Generate random vertical lines with start and end points
num_vlines = 5; % Number of vertical lines
x_positions = randi([1, 10], 1, num_vlines); % Random x positions
y_start = randi([1, 5], 1, num_vlines); % Random start points for y
y_end = randi([6, 10], 1, num_vlines); % Random end points for y

for i = 1:num_vlines
    line([x_positions(i) x_positions(i)], [y_start(i) y_end(i)], 'Color', 'r', 'LineWidth', 1.5);
end

% Generate random horizontal lines with start and end points
num_hlines = 5; % Number of horizontal lines
y_positions = randi([1, 10], 1, num_hlines); % Random y positions
x_start = randi([1, 5], 1, num_hlines); % Random start points for x
x_end = randi([6, 10], 1, num_hlines); % Random end points for x

for i = 1:num_hlines
    line([x_start(i) x_end(i)], [y_positions(i) y_positions(i)], 'Color', 'b', 'LineWidth', 1.5);
end

title('Random Horizontal and Vertical Lines with Start and End Points');
xlabel('X-axis');
ylabel('Y-axis');
hold off;




%NEW CODE
% Set up figure
figure;
hold on;
grid on;
axis([0 8 0 5]); % Set axis limits

% Define the stair steps (each segment as [x1, x2], [y1, y2])
stairs_x = [0, 3, 3, 4, 4, 7]; % X-coordinates for stair steps
stairs_y = [0, 0, 1, 1, 3, 3]; % Y-coordinates for stair steps

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

