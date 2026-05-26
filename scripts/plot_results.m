%% Plotting Transient Response Data
figure('Color',[1 1 1]);

% Plot Grid Voltage during the fault
subplot(2,1,1);
plot(out.V_grid.Time, out.V_grid.Data, 'b', 'LineWidth', 1.5);
title('Grid Voltage (V) during Transient Fault Event');
xlabel('Time (s)'); ylabel('Voltage (V)');
xlim([0.2 0.8]); % Zooms into the fault window
grid on;

% Plot Grid Current showing the overcurrent spike
subplot(2,1,2);
plot(out.I_grid.Time, out.I_grid.Data, 'r', 'LineWidth', 1.5);
title('Grid Current (A) showing Protection Response');
xlabel('Time (s)'); ylabel('Current (A)');
xlim([0.2 0.8]);
grid on;
