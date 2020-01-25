function Tau=ugv_ctrl_encoders(in,P)
    vel_d     = in(1);  % desired vehicle linear velocity
    vel       = in(2);  % vehicle state
    radius_d  = in(3);  % desired turning radius
    radius    = in(4);  % vehicle state
    t         = in(5);
    
    % set persistent flag to initialize integrators and 
    % differentiators at the start of the simulation
    persistent flag
    if t<P.Ts
        flag = 1;
    else
        flag = 0;
    end
    
    w_vehicle_d = vel_d * radius_d;
    w_vehicle = vel * radius;
    
    omega_right_d = (vel_d-(P.d*w_vehicle_d))/P.R;
    omega_right = (vel-(P.d*w_vehicle))/P.R;
    omega_left_d = (vel_d+(P.d*w_vehicle_d))/P.R;
    omega_left = (vel+(P.d*w_vehicle))/P.R;
    
    Tau_r = PI_r(omega_right_d,omega_right,flag,P.kp_r,P.ki_r,...
                    P.Tau_max,P.Ts);
    Tau_l = PI_l(omega_left_d,omega_left,flag,P.kp_l,P.ki_l,...
                    P.Tau_max,P.Ts);   
    Tau = [Tau_r;Tau_l];
end

%------------------------------------------------------------
% PI control for right motor
function u = PI_r(omega_r_c,omega_r,flag,kp_r,ki_r,limit,Ts)
    % declare persistent variables
    persistent integrator
    persistent error_dl
    persistent omega_dl
    % reset persistent variables at start of simulation
    if flag==1
        integrator  = 0;
        error_dl    = 0;
        omega_dl    = 0;
    end
    
    % compute the error
    error = omega_r_c-omega_r;
    % update delayed variables for next time through the loop
    error_dl = error;
    omega_dl = omega_r;

    % compute the pi control signal
    u_unsat = kp_r*error + ki_r*integrator;
    u = sat(u_unsat,limit);
    
    % integrator anti-windup
    if ki_r~=0
        integrator = integrator + Ts/ki_r*(u-u_unsat);
    end
end

%------------------------------------------------------------
% PI control for right motor
function u = PI_l(omega_l_c,omega_l,flag,kp_l,ki_l,limit,Ts)
    % declare persistent variables
    persistent integrator
    persistent error_dl
    persistent omega_dl
    % reset persistent variables at start of simulation
    if flag==1
        integrator  = 0;
        error_dl    = 0;
        omega_dl    = 0;
    end
    
    % compute the error
    error = omega_l_c-omega_l;
    % update delayed variables for next time through the loop
    error_dl = error;
    omega_dl = omega_l;

    % compute the pi control signal
    u_unsat = kp_l*error + ki_l*integrator;
    u = sat(u_unsat,limit);
    
    % integrator anti-windup
    if ki_l~=0
        integrator = integrator + Ts/ki_l*(u-u_unsat);
    end
end

%-----------------------------------------------------------------
% saturation function
function out = sat(in,limit)
    if     in > limit,      out = limit;
    elseif in < -limit,     out = -limit;
    else                    out = in;
    end
end