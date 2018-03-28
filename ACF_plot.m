function ACF_plot(X1, Y1)
% ACF_plot(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1,'ZDataSource','','Color',[0 0.44705882668495 0.74117648601532]);

% Create xlabel
xlabel('Retard [-]','FontSize',12,'Interpreter','latex');

% Create ylabel
ylabel('FAC [-]','FontSize',12,'Interpreter','latex');

% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-20000 50000]);
box(axes1,'on');
