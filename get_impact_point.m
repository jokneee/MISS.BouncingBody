function [impact_point, time] = get_impact_point(starting_point,velocity,surface_equation)
 syms x y t
 xt = starting_point(1)+velocity(1)*t;
 yt = starting_point(2)+velocity(2)*t;
 zt = starting_point(3)+velocity(3)*t-(10*t^2)/2;
 surface_equation = subs(surface_equation,{x,y},[xt,yt]);
 eq = surface_equation == zt;
 s_t = solve(eq,t);
 s_signed = sign(s_t);
 s_t = s_t(s_signed>0);
 x_point= subs(xt,t,s_t);
 y_point= subs(yt,t,s_t);
 z_point= subs(zt,t,s_t);
 impact_point = double([x_point,y_point,z_point]);
 time= double(s_t);
end

