clc;
clear;
close all;
% Create Full Screen Figure figure('units','normalized','outerposition',[0 0 1 1]); set(gcf,'color','black');
hold on;
% Draw Radar Range Circles theta = linspace(0, pi, 1000); ranges = 10:10:100;
for r = ranges
x = r * cos(theta); y = r * sin(theta);
plot(x, y, 'Color', [0.6 0.8 0.2], 'LineWidth', 1); end
% Draw Radar Angle Lines angles = 0:30:180;
for ang = angles
[x, y] = pol2cart(deg2rad(ang), 100);
plot([0 x], [0 y], 'Color', [0.6 0.8 0.2], 'LineWidth', 2); end

% Pre-create scanning lines for i = 1:180
[x, y] = pol2cart(deg2rad(i), 100);
h(i) = plot([0 x], [0 y], 'g', 'LineWidth', 1); end

% Serial Port Configuration
s = serial('COM4'); % Change COM port if needed s.BaudRate = 9600;
fopen(s);

% Real-Time Radar Display
while true
data = fscanf(s);
values = strsplit(strtrim(data), ','); if length(values) == 2
angle = str2double(values{1}); distance = str2double(values{2});

if angle > 0 && angle <= 180
	
% Convert polar to cartesian
[x_end, y_end] = pol2cart(deg2rad(angle), distance); [x_max, y_max] = pol2cart(deg2rad(angle), 100);

% Update scanning line
set(h(angle), 'XData', [0 x_end], 'YData', [0 y_end], 'Color', 'r');

% Flash scanning beam
beam = plot([0 x_max], [0 y_max], 'r', 'LineWidth', 3); drawnow;
delete(beam); end
end
end
