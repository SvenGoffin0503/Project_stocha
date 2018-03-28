function Histo_plot(data1)
% Histo_plot(DATA1)
%  DATA1:  histogram data

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);

% Create histogram
histogram(data1,'DisplayName','dx_1D','Parent',axes1,...
    'Normalization','probability',...
    'BinMethod','auto');

% Create xlabel
xlabel('Valeur de l''increment [-]','FontSize',12,'Interpreter','latex');

% Create ylabel
ylabel('Occurrence relative [-]','FontSize',12,'Interpreter','latex');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[-1.1 1.1]);
box(axes1,'on');
