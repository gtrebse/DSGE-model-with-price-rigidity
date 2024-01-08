// Monetary economy with spending and fiscal shocks
// Taylor rule 2
// Alen Rozac, 2019

var y yn pi a x chi rn r i amp c n rw mc g;
varexo ea eg echi emp;


parameters theta beta rhoa rhog rhochi rhomp sigmaa sigmag sigmachi gamma gamma_n lambda Y C G phi_pi phi_x kappa;

theta = 0.2;
beta = 0.99;
rhoa = 0.95;
rhog = 0.5;
rhochi = 0.6;
rhomp = 0.8;
sigmaa = 1;
sigmag = 1;
sigmachi = 1;
sigmaemp = 1;
gamma = 3;
gamma_n = 2;
lambda = 0.5;
//rhoinert = 0.6;
Y = 1;
C = 0.6;
G = 0.25;
kappa = (((1-theta)*(1-theta*beta))/(1+(theta*beta))*theta)*(gamma_n+gamma*(Y/C));
phi_pi = 1.5;
phi_x = 0.5;


model(linear);

// Government Spending Process
g = rhog*g(-1) + eg;

// Technological Process
a = rhoa*a(-1) + ea;

// Consumer Confidence Process
chi = rhochi*chi(-1) + echi;

// Monetary Policy Shock
amp = rhomp*amp(-1) + emp;

// Resource Constraint
c = (Y/C)*y - (G/C)*g;

// Production function
y = n + a;

// IS curve
y = -1/gamma*(C/Y)*(r+((rhochi-1)*chi))-(G/Y)*((rhog-1)*g)+y(+1);

// Philips Curve
pi = kappa*x + (beta/(1+theta*beta))*pi(+1) + (1/(1+theta*beta))*pi(-1);

// Fisher Parity
r = i - pi(+1);

// Output Gap
x = y - yn;

// Natural Level of Output
yn = (chi + gamma*(G/C)*g + (1+gamma_n)*a)/(gamma_n + gamma*(Y/C));

// Natural Rate of Interest
rn = -gamma_n/(gamma_n + gamma*(Y/C))*(rhochi - 1)*chi -(gamma_n/(gamma_n + gamma*(Y/C)))*((gamma*G)/C)*(rhog - 1)*g +gamma*(Y/C)*((1 + gamma_n)/(gamma_n + gamma*(Y/C)))*(rhoa - 1)*a;

// Implicit Labor Supply
rw = gamma_n*n - chi + gamma*c;

// Marginal Cost
mc = -chi -(1+gamma_n)*a + (gamma_n + gamma*(Y/C))*y -gamma*(G/C)*g;

// Taylor Rule 2
i = rn + phi_pi*pi + phi_x*x + amp;

end;

// Shocks
shocks;

var ea = sigmaa^2;
var eg = sigmag^2;
var echi = sigmachi^2;
var emp = sigmaemp^2;

end;

check;
stoch_simul;
