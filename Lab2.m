clc;
clearvars;
close all;

x_range = -15:1:15;
y_range = x_range;
[X,Y] = meshgrid(x_range);
c = X.^2 + Y.^2;
mesh(X,Y,c);
hold on;
r0 = [-5,0,200];
v0 = [2,4,0];
full_time = 0;
impact_points = [];
times = [];
energies = [];

for i = 1:5
    [impact_point,time] = get_impact_point(r0,v0);
    normal = calculate_normal(impact_point);
    v_point = get_velocity_in_point(v0, time);
    v1 = next_velocity(v_point, normal);
    [kinetic,potential,total] = calculate_energy(v_point,impact_point(3));

    t = linspace(0, time);
    x = r0(1)+v0(1).*t;
    y = r0(2)+v0(2).*t;
    z = r0(3)+v0(3).*t - 5*t.^2;
    plot3(x,y,z, 'Color','r');
    hold on;
    impact_points = [impact_points;impact_point];
    times = [times;time];
    energies= [energies;[kinetic,potential,total]];
    full_time = full_time+time;
    r0 = impact_point;
    v0 = v1;
end
xlabel('x');
ylabel('y');
zlabel('z');

[impact_points times energies]