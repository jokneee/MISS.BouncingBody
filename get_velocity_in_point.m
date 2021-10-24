function [v_point] = get_velocity_in_point(velocity,time)
acceleration = 10;
v_point = velocity + [0,0,-acceleration*time];
end

