% Used to simulate 2 models and compute welfare loss
% Monetary Economics 2 - University of Ljubljana, Faculty of Economics
% Alen Rozac, 2019
clear;
% Loss function weight (0.5, 0.5)
lambda = 0.5;


% Solve model A (with inertia) and compute Loss
dynare AAAmodel
load AAAmodel_results
VarXA = oo_.var(5,5);
VarPiA = oo_.var(3,3);
LossA = VarPiA + lambda*VarXA;
% Govt A
irA_y_eg=oo_.irfs.y_eg;
irA_yn_eg=oo_.irfs.yn_eg;
irA_pi_eg=oo_.irfs.pi_eg;
irA_x_eg=oo_.irfs.x_eg;
irA_rn_eg=oo_.irfs.rn_eg;
irA_r_eg=oo_.irfs.r_eg;
irA_i_eg=oo_.irfs.i_eg;
irA_c_eg=oo_.irfs.c_eg;
irA_n_eg=oo_.irfs.n_eg;
% Consumer Confidence A
irA_y_echi=oo_.irfs.y_echi;
irA_yn_echi=oo_.irfs.yn_echi;
irA_pi_echi=oo_.irfs.pi_echi;
irA_x_echi=oo_.irfs.x_echi;
irA_rn_echi=oo_.irfs.rn_echi;
irA_r_echi=oo_.irfs.r_echi;
irA_i_echi=oo_.irfs.i_echi;
irA_c_echi=oo_.irfs.c_echi;
irA_n_echi=oo_.irfs.n_echi;

% Solve B (no inertia) and compute Loss
dynare BBBmodel noclearall
load BBBmodel_results
VarXB = oo_.var(5,5);
VarPiB = oo_.var(3,3);
LossB = VarPiB + lambda*VarXB;
% Govt B
irB_y_eg=oo_.irfs.y_eg;
irB_yn_eg=oo_.irfs.yn_eg;
irB_pi_eg=oo_.irfs.pi_eg;
irB_x_eg=oo_.irfs.x_eg;
irB_rn_eg=oo_.irfs.rn_eg;
irB_r_eg=oo_.irfs.r_eg;
irB_i_eg=oo_.irfs.i_eg;
irB_c_eg=oo_.irfs.c_eg;
irB_n_eg=oo_.irfs.n_eg;
% Consumer Confidence B
irB_y_echi=oo_.irfs.y_echi;
irB_yn_echi=oo_.irfs.yn_echi;
irB_pi_echi=oo_.irfs.pi_echi;
irB_x_echi=oo_.irfs.x_echi;
irB_rn_echi=oo_.irfs.rn_echi;
irB_r_echi=oo_.irfs.r_echi;
irB_i_echi=oo_.irfs.i_echi;
irB_c_echi=oo_.irfs.c_echi;
irB_n_echi=oo_.irfs.n_echi;


% Govt Shock Comparison
fig_eg=figure
subplot(3,3,1);
plot(irA_y_eg, '-r');
hold on;
plot(irB_y_eg, '-b');
hold off;
title('y');
legend('A', 'B');
subplot(3,3,2);
plot(irA_yn_eg, '-r');
hold on;
plot(irB_yn_eg, '-b');
hold off;
title('yn');
legend('A', 'B');
subplot(3,3,3);
plot(irA_pi_eg, '-r');
hold on;
plot(irB_pi_eg, '-b');
hold off;
title('pi');
legend('A', 'B');
subplot(3,3,4);
plot(irA_x_eg, '-r');
hold on;
plot(irB_x_eg, '-b');
hold off;
title('x');
legend('A', 'B');
subplot(3,3,5);
plot(irA_rn_eg, '-r');
hold on;
plot(irB_rn_eg, '-b');
hold off;
title('rn');
legend('A', 'B');
subplot(3,3,6);
plot(irA_r_eg, '-r');
hold on;
plot(irB_r_eg, '-b');
hold off;
title('r');
legend('A', 'B');
subplot(3,3,7);
plot(irA_i_eg, '-r');
hold on;
plot(irB_i_eg, '-b');
hold off;
title('i');
legend('A', 'B');
subplot(3,3,8);
plot(irA_c_eg, '-r');
hold on;
plot(irB_c_eg, '-b');
hold off;
title('c');
legend('A', 'B');
subplot(3,3,9);
plot(irA_n_eg, '-r');
hold on;
plot(irB_n_eg, '-b');
hold off;
title('n');
legend('A', 'B');

print(fig_eg, 'IRs to Govt Shock', '-dpdf');


% Consumer Confidence Comparison
fig_echi=figure
subplot(3,3,1);
plot(irA_y_echi, '-r');
hold on;
plot(irB_y_echi, '-b');
hold off;
title('y');
legend('A', 'B');
subplot(3,3,2);
plot(irA_yn_echi, '-r');
hold on;
plot(irB_yn_echi, '-b');
hold off;
title('yn');
legend('A', 'B');
subplot(3,3,3);
plot(irA_pi_echi, '-r');
hold on;
plot(irB_pi_echi, '-b');
hold off;
title('pi');
legend('A', 'B');
subplot(3,3,4);
plot(irA_x_echi, '-r');
hold on;
plot(irB_x_echi, '-b');
hold off;
title('x');
legend('A', 'B');
subplot(3,3,5);
plot(irA_rn_echi, '-r');
hold on;
plot(irB_rn_echi, '-b');
hold off;
title('rn');
legend('A', 'B');
subplot(3,3,6);
plot(irA_r_echi, '-r');
hold on;
plot(irB_r_echi, '-b');
hold off;
title('r');
legend('A', 'B');
subplot(3,3,7);
plot(irA_i_echi, '-r');
hold on;
plot(irB_i_echi, '-b');
hold off;
title('i');
legend('A', 'B');
subplot(3,3,8);
plot(irA_c_echi, '-r');
hold on;
plot(irB_c_echi, '-b');
hold off;
title('c');
legend('A', 'B');
subplot(3,3,9);
plot(irA_n_echi, '-r');
hold on;
plot(irB_n_echi, '-b');
hold off;
title('n');
legend('A', 'B');

print(fig_echi, 'IRs to Govt Shock', '-dpdf');


% Loss Computation
display('Welfare loss in case with inertia:'); LossA
display('Welfare loss in case without inertia '); LossB

