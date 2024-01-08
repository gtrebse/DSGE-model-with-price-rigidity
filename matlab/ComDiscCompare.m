% This program compares the optimal monetary policiy under discretion and
% commitment in a basic New Keynesian model

% Monetary economics MSc course
% Money and Finance program
% Univeristy of Ljubljana, Faculty of Economics
% Igor Masten, igor.masten@ef.uni-lj.si
clear;
lambda = 0.5;
% Solve the model under commitment and collect results
dynare NKmod_commit
%load NKmod_commit_results

IRcommit_y_ea=oo_.irfs.y_ea;
IRcommit_pi_ea=oo_.irfs.pi_ea;
IRcommit_y_pi=oo_.irfs.y_epi;
IRcommit_pi_pi=oo_.irfs.pi_epi;
VarXcommit=oo_.var(5,5);% Variance of output gap
VarPicommit=oo_.var(3,3);% Variance of inflation
LossCommit = VarPicommit+lambda*VarXcommit;

% Solve the model under discretion and collect results
dynare NKmod_disc noclearall
%load NKmod_disc_results
IRdisc_y_ea=oo_.irfs.y_ea;
IRdisc_pi_ea=oo_.irfs.pi_ea;
IRdisc_y_pi=oo_.irfs.y_epi;
IRdisc_pi_pi=oo_.irfs.pi_epi;
VarXdisc=oo_.var(5,5);% Variance of output
VarPidisc=oo_.var(3,3);% Variance of inflation
LossDisc = VarPidisc+lambda*VarXdisc;

display('Loss under commitment:'); LossCommit
display('Loss under discretion:'); LossDisc

zline=zeros(size(IRcommit_y_ea));

fig=figure
subplot(2,1,1);
plot(IRcommit_y_ea,'-r','LineWidth',2);
hold on;
plot(IRdisc_y_ea,'-b','LineWidth',2);
plot(zline,'-k','LineWidth',1);
hold off;
title('IRs of output to productivity shock');
legend('Commitment','Discretion');

subplot(2,1,2);
plot(IRcommit_pi_ea,'-r','LineWidth',2);
hold on;
plot(IRdisc_pi_ea,'-b','LineWidth',2);
plot(zline,'-k','LineWidth',1);
hold off;
title('IRs of inflation to productivity shock');
legend('Commitment','Discretion');
SetFigureProperties(1,1);
print(fig,'IRsToProdShock','-dpdf');

fig=figure
subplot(2,1,1);
plot(IRcommit_y_pi,'-r','LineWidth',2);
hold on;
plot(IRdisc_y_pi,'-b','LineWidth',2);
plot(zline,'-k','LineWidth',1);
hold off;
title('IR of output to cost-push shock');
legend('Commitment','Discretion');

subplot(2,1,2);
plot(IRcommit_pi_pi,'-r','LineWidth',2);
hold on;
plot(IRdisc_pi_pi,'-b','LineWidth',2);
plot(zline,'-k','LineWidth',1);
hold off;
title('IR of inflation to cost-push shock');
legend('Commitment','Discretion');
SetFigureProperties(1,1);
print(fig,'IRsToCostPushShock','-dpdf');