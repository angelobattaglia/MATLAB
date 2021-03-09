function Ec = KineticE(m, v)
%Calculate kinetic energy of a body
%Input:
%   m: mass of the body [kg]
%   v: speed of the body [m/s]
%Output:
%   Ec: kinetic energy [J]
v2 = v*v;
Ec = 0.5 * m * v2;
%   In the Command Window of MATLAB type
%   >> Ec = KineticE(10, 2)
end
