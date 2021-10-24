function [normal_vector] = calculate_normal(surface_equation,point_coordinates)
syms x y
Px = diff(surface_equation,x);
Py = diff(surface_equation,y);
N = [-Px, -Py, 1];
N_magnitude = norm(N);
normal = N/N_magnitude;
normal_vector = double(subs(normal,{x,y},point_coordinates));
end

