clc;
clearvars;
close all;

syms x y
c = x^2 + y^2;
r0 = [-5,0,200];
v0 = [2,4,0];
[impact_point,t] = get_impact_point(r0,v0,c);
normal = calculate_normal(c,[impact_point(1),impact_point(2)]);
v1 = next_velocity(v0, normal);
v_point = get_velocity_in_point(v0, t);
[kinetic,potential,total] = calculate_energy(v_point,impact_point(3));


