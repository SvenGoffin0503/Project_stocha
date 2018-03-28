function [Wiener_scal, dx] = Wiener_scal(N,dt)

dx = sqrt(dt) * randn(1,N);
dx(1) = 0.0;
Wiener_scal = cumsum(dx);

end
