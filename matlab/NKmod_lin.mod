
/*
* ------------------------------------------------------------------------
 A simple New Keynesian model with Calvo pricing in log-linear form

* ------------------------------------------------------------------------
*/

// ======================================================================//
//                  Part One: PREAMBLE                                   //
// Commands: var, varexo, parameters                                     //
// ======================================================================//


// Define endogenous variables. Note that the list should include also 
// those exogenous processes that have an AR structure.
var y yn pi r i a epsmp x;
 
// Define exoegnous variables. These are essentially the names of shocks to
// exogenous processes.
varexo ea emp;

// Define the names of parameters. Below the "parameters" command, assign 
// values to each parameter.
parameters theta beta rhoa rhomp sigmaa sigmepsmp gamma gamma_n phi_pi phi_x 
kappa alpha;

theta = 0.66;
beta  = 0.995;
rhoa  = 0.95;
rhomp = 0.6;
gamma = 0.16;
gamma_n = 0.47;
phi_pi = 0.9;
phi_x = 0.5;
alpha=2/3;
kappa = (1-beta*theta)*(1-beta)/theta*(gamma+(gamma_n+alpha)/(1-alpha));
sigmaa   = 1;
sigmepsmp   = 1;


// ======================================================================//
//              Part Two: DEFINITION OF MODEL EQUATIONS                  //
// Commands: model, shocks                                               //
// ======================================================================//

model(linear);

y = -1/gamma*r + y(+1);
pi = beta*pi(+1)+kappa*x;
i =  phi_pi*pi+phi_x*x+epsmp;
r=i-pi(+1); 
yn =a*(1+gamma_n)/(gamma+gamma_n+alpha*(1-gamma));
a = rhoa*a(-1)+ea;
epsmp = rhomp*epsmp(-1)+emp;
x=y-yn;
end;



// ======================================================================//
//          Part Three: Specification of variances of shocks             //
// ======================================================================//
 
shocks;
var ea = sigmaa^2;
var emp = sigmepsmp^2;
end;

// ======================================================================//
//                    Part Four: MODEL SOLUTION                          //
// Commands: stoch_simul, ...                                            //
// ======================================================================//

check; // Check the Blanchard-Kahn condition, not necessary


stoch_simul; // Solves and simulates the model. 

