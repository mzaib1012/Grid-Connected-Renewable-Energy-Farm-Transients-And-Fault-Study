%% Project Initialization Parameters
clear; clc;

% Grid & Simulation Parameters
F_grid = 60;          % Grid Frequency (Hz)
Ts = 5e-6;            % Discrete Simulation Time step (Crucial for fast transients)

% 10 MW PV Farm Parameters
P_nominal = 10e6;     % 10 Megawatts total nominal power
V_dc = 500;           % DC Link Voltage (V)

% Transformer 1 (Inverter to Medium Voltage Distribution)
V_low = 260;          % Inverter AC side output (V)
V_med = 11e3;         % Distribution line side (11 kV)
S_trans1 = 12e6;      % 12 MVA transformer capacity rating

% Grid Side & Substation Transformer
V_high = 110e3;       % High-voltage Transmission Grid (110 kV)
S_trans2 = 15e6;      % 15 MVA Substation transformer rating

disp('🚀 Grid Parameters successfully loaded into the Workspace!');
