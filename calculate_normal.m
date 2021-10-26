function [normal_vector] = calculate_normal(point_coordinates)
N = [-2*point_coordinates(1), -2*point_coordinates(2), 1];
N_magnitude = norm(N);
normal_vector = N/N_magnitude;
end

