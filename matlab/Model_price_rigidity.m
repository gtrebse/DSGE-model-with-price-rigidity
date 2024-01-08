% Gasper Trebse
% DSGE model with price rigidity simulation

clear all; clear; close all;

% With price rigidity
dynare Model_price_rigidity

% Gov shock G
p_rig_y_eg=oo_.irfs.y_eg;
p_rig_yn_eg=oo_.irfs.yn_eg;
p_rig_pi_eg=oo_.irfs.pi_eg;
p_rig_x_eg=oo_.irfs.x_eg;
p_rig_mc_eg=oo_.irfs.mc_eg;
p_rig_r_eg=oo_.irfs.r_eg;
p_rig_i_eg=oo_.irfs.i_eg;
p_rig_c_eg=oo_.irfs.c_eg;
p_rig_n_eg=oo_.irfs.n_eg;

% productivity shock A
p_rig_y_ea=oo_.irfs.y_ea;
p_rig_yn_ea=oo_.irfs.yn_ea;
p_rig_pi_ea=oo_.irfs.pi_ea;
p_rig_x_ea=oo_.irfs.x_ea;
p_rig_mc_ea=oo_.irfs.mc_ea;
p_rig_r_ea=oo_.irfs.r_ea;
p_rig_i_ea=oo_.irfs.i_ea;
p_rig_c_ea=oo_.irfs.c_ea;
p_rig_n_ea=oo_.irfs.n_ea;

% Consumer Confidence shock CHI
p_rig_y_echi=oo_.irfs.y_echi;
p_rig_yn_echi=oo_.irfs.yn_echi;
p_rig_pi_echi=oo_.irfs.pi_echi;
p_rig_x_echi=oo_.irfs.x_echi;
p_rig_mc_echi=oo_.irfs.mc_echi;
p_rig_r_echi=oo_.irfs.r_echi;
p_rig_i_echi=oo_.irfs.i_echi;
p_rig_c_echi=oo_.irfs.c_echi;
p_rig_n_echi=oo_.irfs.n_echi;

% Demand Elasticity EPSILON
p_rig_y_eepsilon=oo_.irfs.y_eepsilon;
p_rig_yn_eepsilon=oo_.irfs.yn_eepsilon;
p_rig_pi_eepsilon=oo_.irfs.pi_eepsilon;
p_rig_x_eepsilon=oo_.irfs.x_eepsilon;
p_rig_mc_eepsilon=oo_.irfs.mc_eepsilon;
p_rig_r_eepsilon=oo_.irfs.r_eepsilon;
p_rig_i_eepsilon=oo_.irfs.i_eepsilon;
p_rig_c_eepsilon=oo_.irfs.c_eepsilon;
p_rig_n_eepsilon=oo_.irfs.n_eepsilon;

% Demand Elasticity MP
p_rig_y_emp=oo_.irfs.y_emp;
p_rig_yn_emp=oo_.irfs.yn_emp;
p_rig_pi_emp=oo_.irfs.pi_emp;
p_rig_x_emp=oo_.irfs.x_emp;
p_rig_mc_emp=oo_.irfs.mc_emp;
p_rig_r_emp=oo_.irfs.r_emp;
p_rig_i_emp=oo_.irfs.i_emp;
p_rig_c_emp=oo_.irfs.c_emp;
p_rig_n_emp=oo_.irfs.n_emp;

% Model without price rigidities
dynare Model_wo_price_rigidity

% Gov shock
no_p_rig_y_eg=oo_.irfs.y_eg;
no_p_rig_yn_eg=oo_.irfs.yn_eg;
no_p_rig_pi_eg=oo_.irfs.pi_eg;
no_p_rig_x_eg=oo_.irfs.x_eg;
no_p_rig_mc_eg=oo_.irfs.mc_eg;
no_p_rig_r_eg=oo_.irfs.r_eg;
no_p_rig_i_eg=oo_.irfs.i_eg;
no_p_rig_c_eg=oo_.irfs.c_eg;
no_p_rig_n_eg=oo_.irfs.n_eg;

% Productivity shock A
no_p_rig_y_ea=oo_.irfs.y_ea;
no_p_rig_yn_ea=oo_.irfs.yn_ea;
no_p_rig_pi_ea=oo_.irfs.pi_ea;
no_p_rig_x_ea=oo_.irfs.x_ea;
no_p_rig_mc_ea=oo_.irfs.mc_ea;
no_p_rig_r_ea=oo_.irfs.r_ea;
no_p_rig_i_ea=oo_.irfs.i_ea;
no_p_rig_c_ea=oo_.irfs.c_ea;
no_p_rig_n_ea=oo_.irfs.n_ea;

% Consumer Confidence CHI
no_p_rig_y_echi=oo_.irfs.y_echi;
no_p_rig_yn_echi=oo_.irfs.yn_echi;
no_p_rig_pi_echi=oo_.irfs.pi_echi;
no_p_rig_x_echi=oo_.irfs.x_echi;
no_p_rig_mc_echi=oo_.irfs.mc_echi;
no_p_rig_r_echi=oo_.irfs.r_echi;
no_p_rig_i_echi=oo_.irfs.i_echi;
no_p_rig_c_echi=oo_.irfs.c_echi;
no_p_rig_n_echi=oo_.irfs.n_echi;

% Demand Elasticity EPSILON
no_p_rig_y_eepsilon=oo_.irfs.y_eepsilon;
no_p_rig_yn_eepsilon=oo_.irfs.yn_eepsilon;
no_p_rig_pi_eepsilon=oo_.irfs.pi_eepsilon;
no_p_rig_x_eepsilon=oo_.irfs.x_eepsilon;
no_p_rig_mc_eepsilon=oo_.irfs.mc_eepsilon;
no_p_rig_r_eepsilon=oo_.irfs.r_eepsilon;
no_p_rig_i_eepsilon=oo_.irfs.i_eepsilon;
no_p_rig_c_eepsilon=oo_.irfs.c_eepsilon;
no_p_rig_n_eepsilon=oo_.irfs.n_eepsilon;

% Demand Elasticity MP
no_p_rig_y_emp=oo_.irfs.y_emp;
no_p_rig_yn_emp=oo_.irfs.yn_emp;
no_p_rig_pi_emp=oo_.irfs.pi_emp;
no_p_rig_x_emp=oo_.irfs.x_emp;
no_p_rig_mc_emp=oo_.irfs.mc_emp;
no_p_rig_r_emp=oo_.irfs.r_emp;
no_p_rig_i_emp=oo_.irfs.i_emp;
no_p_rig_c_emp=oo_.irfs.c_emp;
no_p_rig_n_emp=oo_.irfs.n_emp;

% Govt Shock Comparison GOVERNMENT
fig_eg=figure('Name','Government spending shock')
subplot(3,3,1);
plot(p_rig_y_eg, '-r');
hold on;
plot(no_p_rig_y_eg, '-b');
hold off;
title('y');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,2);
plot(p_rig_yn_eg, '-r');
hold on;
plot(no_p_rig_yn_eg, '-b');
hold off;
title('yn');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,3);
plot(p_rig_pi_eg, '-r');
hold on;
plot(no_p_rig_pi_eg, '-b');
hold off;
title('pi');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,4);
plot(p_rig_x_eg, '-r');
hold on;
plot(no_p_rig_x_eg, '-b');
hold off;
title('x');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,5);
plot(p_rig_mc_eg, '-r');
hold on;
plot(no_p_rig_mc_eg, '-b');
hold off;
title('mc');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,6);
plot(p_rig_r_eg, '-r');
hold on;
plot(no_p_rig_r_eg, '-b');
hold off;
title('r');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,7);
plot(p_rig_i_eg, '-r');
hold on;
plot(no_p_rig_i_eg, '-b');
hold off;
title('i');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,8);
plot(p_rig_c_eg, '-r');
hold on;
plot(no_p_rig_c_eg, '-b');
hold off;
title('c');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,9);
plot(p_rig_n_eg, '-r');
hold on;
plot(no_p_rig_n_eg, '-b');
hold off;
title('n');
legend('P RIGID', 'P NO RIGID');

% Consumer Confidence Comparison CHI
fig_echi=figure('Name','Consumer confidence CHI')
subplot(3,3,1);
plot(p_rig_y_echi, '-r');
hold on;
plot(no_p_rig_y_echi, '-b');
hold off;
title('y');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,2);
plot(p_rig_yn_echi, '-r');
hold on;
plot(no_p_rig_yn_echi, '-b');
hold off;
title('yn');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,3);
plot(p_rig_pi_echi, '-r');
hold on;
plot(no_p_rig_pi_echi, '-b');
hold off;
title('pi');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,4);
plot(p_rig_x_echi, '-r');
hold on;
plot(no_p_rig_x_echi, '-b');
hold off;
title('x');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,5);
plot(p_rig_mc_echi, '-r');
hold on;
plot(no_p_rig_mc_echi, '-b');
hold off;
title('mc');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,6);
plot(p_rig_r_echi, '-r');
hold on;
plot(no_p_rig_r_echi, '-b');
hold off;
title('r');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,7);
plot(p_rig_i_echi, '-r');
hold on;
plot(no_p_rig_i_echi, '-b');
hold off;
title('i');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,8);
plot(p_rig_c_echi, '-r');
hold on;
plot(no_p_rig_c_echi, '-b');
hold off;
title('c');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,9);
plot(p_rig_n_echi, '-r');
hold on;
plot(no_p_rig_n_echi, '-b');
hold off;
title('n');
legend('P RIGID', 'P NO RIGID');

% Productivity shock A
fig_ea=figure('Name','Productivity shock')
subplot(3,3,1);
plot(p_rig_y_ea, '-r');
hold on;
plot(no_p_rig_y_ea, '-b');
hold off;
title('y');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,2);
plot(p_rig_yn_ea, '-r');
hold on;
plot(no_p_rig_yn_ea, '-b');
hold off;
title('yn');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,3);
plot(p_rig_pi_ea, '-r');
hold on;
plot(no_p_rig_pi_ea, '-b');
hold off;
title('pi');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,4);
plot(p_rig_x_ea, '-r');
hold on;
plot(no_p_rig_x_ea, '-b');
hold off;
title('x');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,5);
plot(p_rig_mc_ea, '-r');
hold on;
plot(no_p_rig_mc_ea, '-b');
hold off;
title('mc');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,6);
plot(p_rig_r_ea, '-r');
hold on;
plot(no_p_rig_r_ea, '-b');
hold off;
title('r');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,7);
plot(p_rig_i_ea, '-r');
hold on;
plot(no_p_rig_i_ea, '-b');
hold off;
title('i');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,8);
plot(p_rig_c_ea, '-r');
hold on;
plot(no_p_rig_c_ea, '-b');
hold off;
title('c');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,9);
plot(p_rig_n_ea, '-r');
hold on;
plot(no_p_rig_n_ea, '-b');
hold off;
title('n');
legend('P RIGID', 'P NO RIGID');

% Demand elasticity shock EPSILON
fig_ea=figure('Name','Shock to elasticity of demand')
subplot(3,3,1);
plot(p_rig_y_eepsilon, '-r');
hold on;
plot(no_p_rig_y_eepsilon, '-b');
hold off;
title('y');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,2);
plot(p_rig_yn_eepsilon, '-r');
hold on;
plot(no_p_rig_yn_eepsilon, '-b');
hold off;
title('yn');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,3);
plot(p_rig_pi_eepsilon, '-r');
hold on;
plot(no_p_rig_pi_eepsilon, '-b');
hold off;
title('pi');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,4);
plot(p_rig_x_eepsilon, '-r');
hold on;
plot(no_p_rig_x_eepsilon, '-b');
hold off;
title('x');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,5);
plot(p_rig_mc_eepsilon, '-r');
hold on;
plot(no_p_rig_mc_eepsilon, '-b');
hold off;
title('mc');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,6);
plot(p_rig_r_eepsilon, '-r');
hold on;
plot(no_p_rig_r_eepsilon, '-b');
hold off;
title('r');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,7);
plot(p_rig_i_eepsilon, '-r');
hold on;
plot(no_p_rig_i_eepsilon, '-b');
hold off;
title('i');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,8);
plot(p_rig_c_eepsilon, '-r');
hold on;
plot(no_p_rig_c_eepsilon, '-b');
hold off;
title('c');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,9);
plot(p_rig_n_eepsilon, '-r');
hold on;
plot(no_p_rig_n_eepsilon, '-b');
hold off;
title('n');
legend('P RIGID', 'P NO RIGID');


% Monetary policy shock MP
fig_ea=figure('Name','Shock to Monetary policy')
subplot(3,3,1);
plot(p_rig_y_emp, '-r');
hold on;
plot(no_p_rig_y_emp, '-b');
hold off;
title('y');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,2);
plot(p_rig_yn_emp, '-r');
hold on;
plot(no_p_rig_yn_emp, '-b');
hold off;
title('yn');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,3);
plot(p_rig_pi_emp, '-r');
hold on;
plot(no_p_rig_pi_emp, '-b');
hold off;
title('pi');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,4);
plot(p_rig_x_emp, '-r');
hold on;
plot(no_p_rig_x_emp, '-b');
hold off;
title('x');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,5);
plot(p_rig_mc_emp, '-r');
hold on;
plot(no_p_rig_mc_emp, '-b');
hold off;
title('mc');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,6);
plot(p_rig_r_emp, '-r');
hold on;
plot(no_p_rig_r_emp, '-b');
hold off;
title('r');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,7);
plot(p_rig_i_emp, '-r');
hold on;
plot(no_p_rig_i_emp, '-b');
hold off;
title('i');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,8);
plot(p_rig_c_emp, '-r');
hold on;
plot(no_p_rig_c_emp, '-b');
hold off;
title('c');
legend('P RIGID', 'P NO RIGID');
subplot(3,3,9);
plot(p_rig_n_emp, '-r');
hold on;
plot(no_p_rig_n_emp, '-b');
hold off;
title('n');
legend('P RIGID', 'P NO RIGID');

