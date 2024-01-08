function [residual, g1, g2, g3] = BBBmodel_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations.
%                                          Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g3        [M_.endo_nbr by (M_.endo_nbr)^3] double   Third derivatives matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 15, 1);

%
% Model equations
%

T49 = (-1)/params(10)*params(14)/params(13);
T91 = params(11)+params(13)/params(14)*params(10);
T103 = (params(4)-1)*params(11)/T91*params(15)*params(10)/params(14);
T109 = params(13)/params(14)*params(10)*(1+params(11))/T91*(params(3)-1);
lhs =y(15);
rhs =y(15)*params(4)+x(2);
residual(1)= lhs-rhs;
lhs =y(4);
rhs =y(4)*params(3)+x(1);
residual(2)= lhs-rhs;
lhs =y(6);
rhs =y(6)*params(5)+x(3);
residual(3)= lhs-rhs;
lhs =y(10);
rhs =y(10)*params(6)+x(4);
residual(4)= lhs-rhs;
lhs =y(11);
rhs =params(13)/params(14)*y(1)-y(15)*params(15)/params(14);
residual(5)= lhs-rhs;
lhs =y(1);
rhs =y(4)+y(12);
residual(6)= lhs-rhs;
lhs =y(1);
rhs =y(1)+T49*(y(8)+y(6)*(params(5)-1))-params(15)/params(13)*y(15)*(params(4)-1);
residual(7)= lhs-rhs;
lhs =y(3);
rhs =params(18)*y(5)+y(3)*params(2)/(1+params(2)*params(1))+y(3)*1/(1+params(2)*params(1));
residual(8)= lhs-rhs;
lhs =y(8);
rhs =y(9)-y(3);
residual(9)= lhs-rhs;
lhs =y(5);
rhs =y(1)-y(2);
residual(10)= lhs-rhs;
lhs =y(2);
rhs =(y(6)+y(15)*params(15)/params(14)*params(10)+y(4)*(1+params(11)))/T91;
residual(11)= lhs-rhs;
lhs =y(7);
rhs =y(6)*(params(5)-1)*(-params(11))/T91-y(15)*T103+y(4)*T109;
residual(12)= lhs-rhs;
lhs =y(13);
rhs =y(12)*params(11)-y(6)+y(11)*params(10);
residual(13)= lhs-rhs;
lhs =y(14);
rhs =(-y(6))-y(4)*(1+params(11))+y(1)*T91-y(15)*params(15)/params(14)*params(10);
residual(14)= lhs-rhs;
lhs =y(9);
rhs =y(10)+y(7)+y(3)*params(16)+y(5)*params(17);
residual(15)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(15, 15);

  %
  % Jacobian matrix
  %

  g1(1,15)=1-params(4);
  g1(2,4)=1-params(3);
  g1(3,6)=1-params(5);
  g1(4,10)=1-params(6);
  g1(5,1)=(-(params(13)/params(14)));
  g1(5,11)=1;
  g1(5,15)=params(15)/params(14);
  g1(6,1)=1;
  g1(6,4)=(-1);
  g1(6,12)=(-1);
  g1(7,6)=(-(T49*(params(5)-1)));
  g1(7,8)=(-T49);
  g1(7,15)=params(15)/params(13)*(params(4)-1);
  g1(8,3)=1-(params(2)/(1+params(2)*params(1))+1/(1+params(2)*params(1)));
  g1(8,5)=(-params(18));
  g1(9,3)=1;
  g1(9,8)=1;
  g1(9,9)=(-1);
  g1(10,1)=(-1);
  g1(10,2)=1;
  g1(10,5)=1;
  g1(11,2)=1;
  g1(11,4)=(-((1+params(11))/T91));
  g1(11,6)=(-(1/T91));
  g1(11,15)=(-(params(15)/params(14)*params(10)/T91));
  g1(12,4)=(-T109);
  g1(12,6)=(-((params(5)-1)*(-params(11))/T91));
  g1(12,7)=1;
  g1(12,15)=T103;
  g1(13,6)=1;
  g1(13,11)=(-params(10));
  g1(13,12)=(-params(11));
  g1(13,13)=1;
  g1(14,1)=(-T91);
  g1(14,4)=1+params(11);
  g1(14,6)=1;
  g1(14,14)=1;
  g1(14,15)=params(15)/params(14)*params(10);
  g1(15,3)=(-params(16));
  g1(15,5)=(-params(17));
  g1(15,7)=(-1);
  g1(15,9)=1;
  g1(15,10)=(-1);
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],15,225);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],15,3375);
end
end
end
end
