function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = Model_wo_price_rigidity.static_g1_tt(T, y, x, params);
end
g1 = zeros(16, 16);
g1(1,7)=T(1);
g1(1,12)=params(3)/params(1)*(params(10)-1);
g1(1,13)=T(1)*(params(11)-1);
g1(1,15)=T(1)*params(8)*1/(params(6)-1);
g1(2,3)=1-params(4);
g1(2,9)=(-params(16));
g1(3,1)=(-(params(1)/params(2)));
g1(3,6)=1;
g1(3,12)=params(3)/params(2);
g1(4,1)=1;
g1(4,4)=(-1);
g1(4,5)=(-1);
g1(5,1)=(-1);
g1(5,2)=1;
g1(5,9)=1;
g1(6,5)=(-(T(2)*params(1)*params(7)*(1+params(8))*(params(9)-1)));
g1(6,8)=1;
g1(6,12)=(-(T(2)*(-(params(7)*params(8)*params(3)*(1-params(10))))));
g1(6,13)=(-(T(2)*(-(params(2)*params(8)*(1-params(11))))));
g1(6,15)=(-(T(2)*(-(params(2)*params(8)*(1-params(12))/(params(6)-1)))));
g1(7,2)=1;
g1(7,5)=(-(params(2)*(1+params(8))/(params(2)*params(8)+params(7)*params(1))));
g1(7,12)=(-(params(7)*params(3)/(params(2)*params(8)+params(7)*params(1))));
g1(7,13)=(-(params(2)/(params(2)*params(8)+params(7)*params(1))));
g1(7,15)=(-(params(2)*1/(params(6)-1)/(params(2)*params(8)+params(7)*params(1))));
g1(8,4)=(-params(8));
g1(8,6)=(-params(7));
g1(8,10)=1;
g1(8,13)=1;
g1(9,1)=(-(params(8)+params(7)*params(1)/params(2)));
g1(9,5)=1+params(8);
g1(9,11)=1;
g1(9,12)=(-(params(7)*params(3)/params(2)));
g1(9,13)=1;
g1(10,3)=(-params(14));
g1(10,9)=(-params(15));
g1(10,14)=1-params(13);
g1(11,3)=1;
g1(11,7)=1;
g1(11,14)=(-1);
g1(12,12)=1-params(10);
g1(13,5)=1-params(9);
g1(14,13)=1-params(11);
g1(15,15)=1-params(12);
g1(16,16)=1-params(13);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
