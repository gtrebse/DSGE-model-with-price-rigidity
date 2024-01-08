function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = Model_wo_price_rigidity.static_resid_tt(T, y, x, params);
end
residual = zeros(16, 1);
lhs = y(1);
rhs = y(1)-T(1)*(y(7)+(params(11)-1)*y(13)+params(8)*1/(params(6)-1)*y(15))-params(3)/params(1)*(params(10)-1)*y(12);
residual(1) = lhs - rhs;
lhs = y(3);
rhs = params(16)*y(9)+y(3)*params(4);
residual(2) = lhs - rhs;
lhs = y(6);
rhs = y(1)*params(1)/params(2)-y(12)*params(3)/params(2);
residual(3) = lhs - rhs;
lhs = y(1);
rhs = y(4)+y(5);
residual(4) = lhs - rhs;
lhs = y(9);
rhs = y(1)-y(2);
residual(5) = lhs - rhs;
lhs = y(8);
rhs = T(2)*(y(5)*params(1)*params(7)*(1+params(8))*(params(9)-1)-y(12)*params(7)*params(8)*params(3)*(1-params(10))-y(13)*params(2)*params(8)*(1-params(11))-y(15)*params(2)*params(8)*(1-params(12))/(params(6)-1));
residual(6) = lhs - rhs;
lhs = y(2);
rhs = (y(5)*params(2)*(1+params(8))+params(2)*y(13)+y(12)*params(7)*params(3)+y(15)*params(2)*1/(params(6)-1))/(params(2)*params(8)+params(7)*params(1));
residual(7) = lhs - rhs;
lhs = y(10);
rhs = params(8)*y(4)-y(13)+params(7)*y(6);
residual(8) = lhs - rhs;
lhs = y(11);
rhs = y(1)*(params(8)+params(7)*params(1)/params(2))-y(5)*(1+params(8))+y(12)*params(7)*params(3)/params(2)-y(13);
residual(9) = lhs - rhs;
lhs = y(14);
rhs = y(14)*params(13)+y(3)*params(14)+y(9)*params(15)+x(5);
residual(10) = lhs - rhs;
lhs = y(7);
rhs = y(14)-y(3);
residual(11) = lhs - rhs;
lhs = y(12);
rhs = params(10)*y(12)+x(4);
residual(12) = lhs - rhs;
lhs = y(5);
rhs = y(5)*params(9)+x(1);
residual(13) = lhs - rhs;
lhs = y(13);
rhs = params(11)*y(13)+x(2);
residual(14) = lhs - rhs;
lhs = y(15);
rhs = y(15)*params(12)+x(3);
residual(15) = lhs - rhs;
lhs = y(16);
rhs = x(5)+params(13)*y(16);
residual(16) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
