// Monetary economics 2
// Monetary economy with speniding and fiscal shocks
// Gasper Trebse

/************** MODEL WITH NOMINAL PRICE RIGIDITIES **************/
//Variables
var y yn pi n a c r rn x rw mc g chi i epsilon amp;

//Exogenous shocks
varexo ea echi eepsilon eg emp;

//Parameters
parameters Y C G beta theta epsilon_elast gamma gamma_n rho_a rho_g rho_chi rho_epsilon rho_mp phi_pi phi_x kappa;

Y = 1;
C = 0.6;
G = 0.25;
beta=0.95;
theta=0.66;
epsilon_elast=7.3; //Not sure how to handle this
gamma=3;
gamma_n=2;
sigma_a=1;
sigma_g=1;
sigma_chi=1;
sigma_epsilon=1;
sigma_mp=1;
rho_a=0.95;
rho_g=0.8;
rho_chi=0.9;
rho_epsilon=0.5;
rho_mp=0.8;
phi_pi=2.5;
phi_x=0.8;
kappa = (((1-theta)*(1-theta*beta))/(epsilon_elast*theta))*(gamma_n+gamma*(Y/C)); //difference

model(linear);

//Model equations
y = y(+1)-(1/gamma)*(C/Y)*(r+(rho_chi-1)*chi+gamma_n*(1/(epsilon_elast-1))*epsilon)-(G/Y)*((rho_g-1)*g);  //IS Curve, check sign
pi = kappa*x + beta*pi(+1);                                         //Phillips
c = (Y/C)*y - (G/C)*g;                                              //Resource constraint
y = n + a;                                                          //Production function
x = y - yn;                                                         //Output gap
rn = (1/(gamma_n*C + gamma*Y))*
    (gamma*(1+gamma_n)*Y*(rho_a-1)*a-
    G*gamma_n*gamma*(1-rho_g)*g-gamma_n*C*(1-rho_chi)*chi - C*((1-rho_epsilon)*gamma_n)*epsilon/(epsilon_elast-1));           //Natural level of interest
yn = ((1+gamma_n)*C*a+C*chi+gamma*G*g+C*(1/(epsilon_elast-1))*epsilon)/(gamma_n*C+gamma*Y);             //Natural level of output
rw = gamma_n*n - chi + gamma*c;                                         //Implicit labor supply
mc =  (gamma_n + gamma*(Y/C))*y-(1+gamma_n)*a +gamma*(G/C)*g - chi + pi;  //Real marginal cost
i = rho_mp*i(-1)+phi_pi*pi+phi_x*x+emp;                            //Interest rate
r = i - pi(+1);                                                     //Fischer parity

//Shocks
g = rho_g*g(-1) + eg;                       //Government spending
a = rho_a*a(-1) + ea;                       //Technology
chi = rho_chi*chi(-1)+echi;                 //Consumer Confidence
epsilon=rho_epsilon*epsilon(-1)+eepsilon;   //Demand elasticity
amp = rho_mp*amp(-1) + emp;                 //Monetary policy

end;

// Shocks
shocks;

var ea = sigma_a^2;
var eg = sigma_g^2;
var echi = sigma_chi^2;
var emp = sigma_mp^2;
var eepsilon = sigma_epsilon^2;

end;

check;
stoch_simul(nograph);