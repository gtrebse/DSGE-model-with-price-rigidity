function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = Model_wo_price_rigidity.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(16, 29);
g1(1,7)=1;
g1(1,23)=(-1);
g1(1,13)=T(1);
g1(1,18)=params(3)/params(1)*(params(10)-1);
g1(1,19)=T(1)*(params(11)-1);
g1(1,21)=T(1)*params(8)*1/(params(6)-1);
g1(2,9)=1;
g1(2,24)=(-params(4));
g1(2,15)=(-params(16));
g1(3,7)=(-(params(1)/params(2)));
g1(3,12)=1;
g1(3,18)=params(3)/params(2);
g1(4,7)=1;
g1(4,10)=(-1);
g1(4,11)=(-1);
g1(5,7)=(-1);
g1(5,8)=1;
g1(5,15)=1;
g1(6,11)=(-(T(2)*params(1)*params(7)*(1+params(8))*(params(9)-1)));
g1(6,14)=1;
g1(6,18)=(-(T(2)*(-(params(7)*params(8)*params(3)*(1-params(10))))));
g1(6,19)=(-(T(2)*(-(params(2)*params(8)*(1-params(11))))));
g1(6,21)=(-(T(2)*(-(params(2)*params(8)*(1-params(12))/(params(6)-1)))));
g1(7,8)=1;
g1(7,11)=(-(params(2)*(1+params(8))/(params(2)*params(8)+params(7)*params(1))));
g1(7,18)=(-(params(7)*params(3)/(params(2)*params(8)+params(7)*params(1))));
g1(7,19)=(-(params(2)/(params(2)*params(8)+params(7)*params(1))));
g1(7,21)=(-(params(2)*1/(params(6)-1)/(params(2)*params(8)+params(7)*params(1))));
g1(8,10)=(-params(8));
g1(8,12)=(-params(7));
g1(8,16)=1;
g1(8,19)=1;
g1(9,7)=(-(params(8)+params(7)*params(1)/params(2)));
g1(9,11)=1+params(8);
g1(9,17)=1;
g1(9,18)=(-(params(7)*params(3)/params(2)));
g1(9,19)=1;
g1(10,9)=(-params(14));
g1(10,15)=(-params(15));
g1(10,4)=(-params(13));
g1(10,20)=1;
g1(10,29)=(-1);
g1(11,24)=1;
g1(11,13)=1;
g1(11,20)=(-1);
g1(12,2)=(-params(10));
g1(12,18)=1;
g1(12,28)=(-1);
g1(13,1)=(-params(9));
g1(13,11)=1;
g1(13,25)=(-1);
g1(14,3)=(-params(11));
g1(14,19)=1;
g1(14,26)=(-1);
g1(15,5)=(-params(12));
g1(15,21)=1;
g1(15,27)=(-1);
g1(16,6)=(-params(13));
g1(16,22)=1;
g1(16,29)=(-1);

end
