function [v2] = next_velocity(v1,normal,elastic_coefficient)
if(nargin<3)
    elastic_coefficient=1;
end
v2 = double(elastic_coefficient*(v1 - 2*(dot(v1,normal))*normal));
end

