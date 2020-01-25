% Parameters for dynamics
P.m = 20;   % kg
P.g = 9.81; % m/s^2
P.R = 0.2;  % m radius of wheel
P.Jm = 50; % kg/m^2
P.w = 0.635; % m
P.d = P.w/2; % m half the base

% Initial Conditions for vehicle
P.x0 = 0.0;
P.xdot0 = 0.0;
P.phi0 = 0.0;
P.phidot0 = 0.0;

% Simulation Parameters
P.t_start = 0.0;  % Start time of simulation
P.t_end = 100000.0;   % End time of simulation
P.Ts = 0.01;      % sample time for simulation
P.t_plot = 0.5;   % the plotting and animation is updated at this rate

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       PI Control: Time Design Strategy
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% saturation limits
P.Tau_max = 1000;                   % Max torque, N-m

% Tuning Parameters
P.kw = 10;    % fake gain to go from torque to angular speed


%--------------------------------------------------
%               Right Motor Control
%--------------------------------------------------
P.kp_r = 1;
P.ki_r = 1;

%---------------------------------------------------
%               Left Motor Control
%---------------------------------------------------
%PD design for outer loop
P.kp_l = 1;
P.ki_l = 1;
