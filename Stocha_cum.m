clear variables;
close all;
clc;
N = 10000;
dt = 0.1;

%% Scalar Wiener processes
W = zeros(3,N);

for i = 1:3
    [W(i,:),~] = Wiener_scal(N,dt);
end

X = (0:N-1) * dt;
figure;
plot(X,W(1,:), 'b', X,W(2,:), 'r', X,W(3,:), 'k');
xlabel('t [-]','FontSize',12,'Interpreter','latex');
ylabel('W(t) [-]','FontSize',12,'Interpreter','latex');
legend('Processus de Wiener 1','Processus de Wiener 2','Processus de Wiener 3');

%% Bidimensional Wiener process
W1 = Wiener_scal(N,dt);
W2 = Wiener_scal(N,dt);

figure;
plot(W1,W2);
xlabel('W1 [-]','FontSize',12,'Interpreter','latex');
ylabel('W2 [-]','FontSize',12,'Interpreter','latex');

%% Properties of Wiener processes
n = 1000;
[W_1D,dx_1D] = Wiener_scal(N,dt);
Wiener = zeros(n,N);
dx = zeros(n,N);

for i = 1:n
    [Wiener(i,:),dx(i,:)] = Wiener_scal(N,dt);
end

% Distribution of the increments of a scalar Wiener process
Histo_plot(dx_1D);

% Average mean of increments of Wiener processes
mean_incr = mean(dx, 2);
mean_mean_incr = mean(mean_incr);

% Average variance of increments of Wiener processes
var_incr = var(dx,1,2);
mean_var_incr = mean(var_incr);

% Autocorrelation function of increments of a scalar Wiener process
[acf_incr,lags] = xcorr(dx_1D);
ACF_plot(lags,acf_incr)

% Autocorrelation function of the derivative of a scalar Wiener process
f_delta = zeros(1,N-1);
for i=1:N-1
    f_delta(1,i) = (W_1D(i+1) - W_1D(i))/dt;
end
[acf_deriv, lags] = xcorr(f_delta);
ACF_plot(lags, acf_deriv)
