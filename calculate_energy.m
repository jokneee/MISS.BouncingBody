function [kinetic,potential,total] = calculate_energy(velocity,position)
mass = 1;
acceleration = 10;
potential = mass * acceleration * position;
kinetic = (mass * norm(velocity)^2)/2;
total = potential+kinetic;
end

