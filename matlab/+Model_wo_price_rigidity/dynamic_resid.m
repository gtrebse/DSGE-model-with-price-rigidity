function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = Model_wo_price_rigidity.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(16, 1);
lhs = y(7);
rhs = y(23)-T(1)*(y(13)+(params(11)-1)*y(19)+params(8)*1/(params(6)-1)*y(21))-params(3)/params(1)*(params(10)-1)*y(18);
residual(1) = lhs - rhs;
lhs = y(9);
rhs = params(16)*y(15)+params(4)*y(24);
residual(2) = lhs - rhs;
lhs = y(12);
rhs = y(7)*params(1)/params(2)-y(18)*params(3)/params(2);
residual(3) = lhs - rhs;
lhs = y(7);
rhs = y(10)+y(11);
residual(4) = lhs - rhs;
lhs = y(15);
rhs = y(7)-y(8);
residual(5) = lhs - rhs;
lhs = y(14);
rhs = T(2)*(y(11)*params(1)*params(7)*(1+params(8))*(params(9)-1)-y(18)*params(7)*params(8)*params(3)*(1-params(10))-y(19)*params(2)*params(8)*(1-params(11))-y(21)*params(2)*params(8)*(1-params(12))/(params(6)-1));
residual(6) = lhs - rhs;
lhs = y(8);
rhs = (y(11)*params(2)*(1+params(8))+params(2)*y(19)+y(18)*params(7)*params(3)+y(21)*params(2)*1/(params(6)-1))/(params(2)*params(8)+params(7)*params(1));
residual(7) = lhs - rhs;
lhs = y(16);
rhs = params(8)*y(10)-y(19)+params(7)*y(12);
residual(8) = lhs - rhs;
lhs = y(17);
rhs = y(7)*(params(8)+params(7)*params(1)/params(2))-y(11)*(1+params(8))+y(18)*params(7)*params(3)/params(2)-y(19);
residual(9) = lhs - rhs;
lhs = y(20);
rhs = params(13)*y(4)+y(9)*params(14)+y(15)*params(15)+x(it_, 5);
residual(10) = lhs - rhs;
lhs = y(13);
rhs = y(20)-y(24);
residual(11) = lhs - rhs;
lhs = y(18);
rhs = params(10)*y(2)+x(it_, 4);
residual(12) = lhs - rhs;
lhs = y(11);
rhs = params(9)*y(1)+x(it_, 1);
residual(13) = lhs - rhs;
lhs = y(19);
rhs = params(11)*y(3)+x(it_, 2);
residual(14) = lhs - rhs;
lhs = y(21);
rhs = params(12)*y(5)+x(it_, 3);
residual(15) = lhs - rhs;
lhs = y(22);
rhs = x(it_, 5)+params(13)*y(6);
residual(16) = lhs - rhs;

end
