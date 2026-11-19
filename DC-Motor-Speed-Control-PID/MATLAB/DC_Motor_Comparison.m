
%% DC MOTOR SPEED CONTROL USING PID
% Complete simulation and performance analysis

clc;
clear;
close all;

%% 1. Run Simulink Model

model = 'DC_Motor_PID';

load_system(model);

set_param(model,'StopTime','30');

simOut = sim(model);

%% 2. Extract Simulation Data

speed_data = simOut.get('speed_data');

t = speed_data.Time;
Y = squeeze(speed_data.Data);

reference = Y(:,1);
actual = Y(:,2);

%% 3. Plot Speed Response

figure;

plot(t,reference,'b--','LineWidth',1.5);
hold on;

plot(t,actual,'r','LineWidth',1.8);

grid on;

xlabel('Time (seconds)');
ylabel('Speed (RPM)');

title('DC Motor Speed Control Using PID');

legend('Reference RPM','Actual RPM','Location','southeast');

%% 4. Calculate Performance Parameters

final_value = reference(end);

info = stepinfo(actual,t,final_value);

rise_time = info.RiseTime;
settling_time = info.SettlingTime;
overshoot = info.Overshoot;

steady_state_error = abs(final_value-actual(end));

%% 5. Display Results

fprintf('\n');
fprintf('====================================\n');
fprintf(' DC MOTOR PID PERFORMANCE ANALYSIS\n');
fprintf('====================================\n');

fprintf('Reference Speed       : %.2f RPM\n',final_value);

fprintf('Final Actual Speed    : %.2f RPM\n',actual(end));

fprintf('Rise Time             : %.3f seconds\n',rise_time);

fprintf('Settling Time         : %.3f seconds\n',settling_time);

fprintf('Overshoot             : %.3f %%\n',overshoot);

fprintf('Steady State Error    : %.3f RPM\n',steady_state_error);

fprintf('====================================\n');

%% 6. Save Simulation Results

save('DC_Motor_PID_Results.mat', ...
    't','reference','actual','info');

disp('Simulation results saved successfully.');
