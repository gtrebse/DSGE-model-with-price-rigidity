function [residual, g1, g2, g3] = BBBmodel_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(15, 1);
T53 = (-1)/params(10)*params(14)/params(13);
T98 = params(11)+params(13)/params(14)*params(10);
T110 = (params(4)-1)*params(11)/T98*params(15)*params(10)/params(14);
T116 = params(13)/params(14)*params(10)*(1+params(11))/T98*(params(3)-1);
lhs =y(20);
rhs =params(4)*y(5)+x(it_, 2);
residual(1)= lhs-rhs;
lhs =y(9);
rhs =params(3)*y(2)+x(it_, 1);
residual(2)= lhs-rhs;
lhs =y(11);
rhs =params(5)*y(3)+x(it_, 3);
residual(3)= lhs-rhs;
lhs =y(15);
rhs =params(6)*y(4)+x(it_, 4);
residual(4)= lhs-rhs;
lhs =y(16);
rhs =params(13)/params(14)*y(6)-y(20)*params(15)/params(14);
residual(5)= lhs-rhs;
lhs =y(6);
rhs =y(9)+y(17);
residual(6)= lhs-rhs;
lhs =y(6);
rhs =T53*(y(13)+y(11)*(params(5)-1))-params(15)/params(13)*y(20)*(params(4)-1)+y(21);
residual(7)= lhs-rhs;
lhs =y(8);
rhs =params(18)*y(10)+params(2)/(1+params(2)*params(1))*y(22)+1/(1+params(2)*params(1))*y(1);
residual(8)= lhs-rhs;
lhs =y(13);
rhs =y(14)-y(22);
residual(9)= lhs-rhs;
lhs =y(10);
rhs =y(6)-y(7);
residual(10)= lhs-rhs;
lhs =y(7);
rhs =(y(11)+y(20)*params(15)/params(14)*params(10)+y(9)*(1+params(11)))/T98;
residual(11)= lhs-rhs;
lhs =y(12);
rhs =y(11)*(params(5)-1)*(-params(11))/T98-y(20)*T110+y(9)*T116;
residual(12)= lhs-rhs;
lhs =y(18);
rhs =y(17)*params(11)-y(11)+y(16)*params(10);
residual(13)= lhs-rhs;
lhs =y(19);
rhs =(-y(11))-y(9)*(1+params(11))+y(6)*T98-y(20)*params(15)/params(14)*params(10);
residual(14)= lhs-rhs;
lhs =y(14);
rhs =y(15)+y(12)+y(8)*params(16)+y(10)*params(17);
residual(15)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(15, 26);

  %
  % Jacobian matrix
  %

  g1(1,5)=(-params(4));
  g1(1,20)=1;
  g1(1,24)=(-1);
  g1(2,2)=(-params(3));
  g1(2,9)=1;
  g1(2,23)=(-1);
  g1(3,3)=(-params(5));
  g1(3,11)=1;
  g1(3,25)=(-1);
  g1(4,4)=(-params(6));
  g1(4,15)=1;
  g1(4,26)=(-1);
  g1(5,6)=(-(params(13)/params(14)));
  g1(5,16)=1;
  g1(5,20)=params(15)/params(14);
  g1(6,6)=1;
  g1(6,9)=(-1);
  g1(6,17)=(-1);
  g1(7,6)=1;
  g1(7,21)=(-1);
  g1(7,11)=(-(T53*(params(5)-1)));
  g1(7,13)=(-T53);
  g1(7,20)=params(15)/params(13)*(params(4)-1);
  g1(8,1)=(-(1/(1+params(2)*params(1))));
  g1(8,8)=1;
  g1(8,22)=(-(params(2)/(1+params(2)*params(1))));
  g1(8,10)=(-params(18));
  g1(9,22)=1;
  g1(9,13)=1;
  g1(9,14)=(-1);
  g1(10,6)=(-1);
  g1(10,7)=1;
  g1(10,10)=1;
  g1(11,7)=1;
  g1(11,9)=(-((1+params(11))/T98));
  g1(11,11)=(-(1/T98));
  g1(11,20)=(-(params(15)/params(14)*params(10)/T98));
  g1(12,9)=(-T116);
  g1(12,11)=(-((params(5)-1)*(-params(11))/T98));
  g1(12,12)=1;
  g1(12,20)=T110;
  g1(13,11)=1;
  g1(13,16)=(-params(10));
  g1(13,17)=(-params(11));
  g1(13,18)=1;
  g1(14,6)=(-T98);
  g1(14,9)=1+params(11);
  g1(14,11)=1;
  g1(14,19)=1;
  g1(14,20)=params(15)/params(14)*params(10);
  g1(15,8)=(-params(16));
  g1(15,10)=(-params(17));
  g1(15,12)=(-1);
  g1(15,14)=1;
  g1(15,15)=(-1);

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],15,676);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],15,17576);
end
end
end
end
