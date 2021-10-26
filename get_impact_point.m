function [impact_point, time] = get_impact_point(starting_point,velocity)
 a = velocity(1)^2 + velocity(2)^2 +5;
 b = 2*velocity(1)*starting_point(1) + 2*velocity(2)*starting_point(2) - velocity(3);
 c = starting_point(1)^2 + starting_point(2)^2 - starting_point(3);
 p = [a b c];
 r = roots(p);
 r_signed = sign(r);
 r = r(r_signed>0);
 r = r(r>1e-10);
 x_point= starting_point(1) + velocity(1)*r;
 y_point= starting_point(2) + velocity(2)*r;
 z_point= starting_point(3) + velocity(3)*r - 5*r.^2;
 impact_point = [x_point,y_point,z_point];
 time= r;
end

