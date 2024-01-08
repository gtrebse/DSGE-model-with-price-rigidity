function [residual, g1, g2, g3] = AAAmodel_dynamic(y, x, params, steady_state, it_)
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
T53 = (-1)/params(10)*params(15)/params(14);
T98 = params(11)+params(14)/params(15)*params(10);
T110 = (params(4)-1)*params(11)/T98*params(16)*params(10)/params(15);
T116 = params(14)/params(15)*params(10)*(1+params(11))/T98*(params(3)-1);
lhs =y(21);
rhs =params(4)*y(6)+x(it_, 2);
residual(1)= lhs-rhs;
lhs =y(10);
rhs =params(3)*y(2)+x(it_, 1);
residual(2)= lhs-rhs;
lhs =y(12);
rhs =params(5)*y(3)+x(it_, 3);
residual(3)= lhs-rhs;
lhs =y(16);
rhs =params(6)*y(5)+x(it_, 4);
residual(4)= lhs-rhs;
lhs =y(17);
rhs =params(14)/params(15)*y(7)-y(21)*params(16)/params(15);
residual(5)= lhs-rhs;
lhs =y(7);
rhs =y(10)+y(18);
residual(6)= lhs-rhs;
lhs =y(7);
rhs =T53*(y(14)+y(12)*(params(5)-1))-params(16)/params(14)*y(21)*(params(4)-1)+y(22);
residual(7)= lhs-rhs;
lhs =y(9);
rhs =params(19)*y(11)+params(2)/(1+params(2)*params(1))*y(23)+1/(1+params(2)*params(1))*y(1);
residual(8)= lhs-rhs;
lhs =y(14);
rhs =y(15)-y(23);
residual(9)= lhs-rhs;
lhs =y(11);
rhs =y(7)-y(8);
residual(10)= lhs-rhs;
lhs =y(8);
rhs =(y(12)+y(21)*params(16)/params(15)*params(10)+y(10)*(1+params(11)))/T98;
residual(11)= lhs-rhs;
lhs =y(13);
rhs =y(12)*(params(5)-1)*(-params(11))/T98-y(21)*T110+y(10)*T116;
residual(12)= lhs-rhs;
lhs =y(19);
rhs =y(18)*params(11)-y(12)+y(17)*params(10);
residual(13)= lhs-rhs;
lhs =y(20);
rhs =(-y(12))-y(10)*(1+params(11))+y(7)*T98-y(21)*params(16)/params(15)*params(10);
residual(14)= lhs-rhs;
lhs =y(15);
rhs =y(16)+params(13)*y(4)+y(9)*params(17)+y(11)*params(18);
residual(15)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(15, 27);

  %
  % Jacobian matrix
  %

  g1(1,6)=(-params(4));
  g1(1,21)=1;
  g1(1,25)=(-1);
  g1(2,2)=(-params(3));
  g1(2,10)=1;
  g1(2,24)=(-1);
  g1(3,3)=(-params(5));
  g1(3,12)=1;
  g1(3,26)=(-1);
  g1(4,5)=(-params(6));
  g1(4,16)=1;
  g1(4,27)=(-1);
  g1(5,7)=(-(params(14)/params(15)));
  g1(5,17)=1;
  g1(5,21)=params(16)/params(15);
  g1(6,7)=1;
  g1(6,10)=(-1);
  g1(6,18)=(-1);
  g1(7,7)=1;
  g1(7,22)=(-1);
  g1(7,12)=(-(T53*(params(5)-1)));
  g1(7,14)=(-T53);
  g1(7,21)=params(16)/params(14)*(params(4)-1);
  g1(8,1)=(-(1/(1+params(2)*params(1))));
  g1(8,9)=1;
  g1(8,23)=(-(params(2)/(1+params(2)*params(1))));
  g1(8,11)=(-params(19));
  g1(9,23)=1;
  g1(9,14)=1;
  g1(9,15)=(-1);
  g1(10,7)=(-1);
  g1(10,8)=1;
  g1(10,11)=1;
  g1(11,8)=1;
  g1(11,10)=(-((1+params(11))/T98));
  g1(11,12)=(-(1/T98));
  g1(11,21)=(-(params(16)/params(15)*params(10)/T98));
  g1(12,10)=(-T116);
  g1(12,12)=(-((params(5)-1)*(-params(11))/T98));
  g1(12,13)=1;
  g1(12,21)=T110;
  g1(13,12)=1;
  g1(13,17)=(-params(10));
  g1(13,18)=(-params(11));
  g1(13,19)=1;
  g1(14,7)=(-T98);
  g1(14,10)=1+params(11);
  g1(14,12)=1;
  g1(14,20)=1;
  g1(14,21)=params(16)/params(15)*params(10);
  g1(15,9)=(-params(17));
  g1(15,11)=(-params(18));
  g1(15,4)=(-params(13));
  g1(15,15)=1;
  g1(15,16)=(-1);

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],15,729);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],15,19683);
end
end
end
end
