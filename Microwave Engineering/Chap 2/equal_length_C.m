function d =equal_length_C(f,vp,C)
beta = 2*pi*f/vp;
d = (pi-atan(1/(2*pi*f*C*50)))/beta;
end