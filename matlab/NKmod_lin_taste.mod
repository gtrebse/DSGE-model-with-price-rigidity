
/*
* ------------------------------------------------------------------------
 A simple New Keynesian model with Calvo pricing in log-linear form
with cost-push and taste shocks. 

* ------------------------------------------------------------------------
*/

// ======================================================================//
//                  Part One: PREAMBLE                                   //
// Commands: var, varexo, parameters                                     //
// ======================================================================//


// Define endogenous variables. Note that the list should include also 
// those exogenous processes that have an AR structure.
var y yn pi r i a emp x eps chi rn;

// Define exoegnous variables. These are essentially the names of shocks to
// exogenous processes.
varexo ea epsmp eeps echi;

// Define the names of parameters. Below the "parameters" command assign 
// values to each parameter.
parameters theta beta rhoa rhomp sigmaa sigmamp gamma gamma_n phi_pi phi_x 
kappa rhoeps sigmaeps epsilon rhochi sigmachi alpha;

theta = 0.66;
beta  = 0.995;
rhoa  = 0.95;
rhomp = 0.8;
rhoeps = 0.5;
gamma = 0.16;
gamma_n = 47;
phi_pi = 1.5;
phi_x = 0.5;
alpha=2/3;
kappa = (1-beta*theta)*(1-beta)/theta*(gamma+(gamma_n+alpha)/(1-alpha));
epsilon = 7.26; 
//omega = (1-beta*theta)*(1-beta)/((epsilon-1)*theta);
sigmaa   = 1;
sigmamp   = 1;
sigmaeps = 1;
rhochi = 0.6;
sigmachi = 1;


// ======================================================================//
//              Part Two: DEFINITION OF MODEL EQUATIONS                  //
// Commands: model, shocks                                               //
// ======================================================================//

model(linear);

x = -1/gamma*(r-rn) + x(+1);
pi = beta*pi(+1)+kappa*x;
i =  phi_pi*pi+phi_x*x+emp;
r=i-pi(+1);
x = y - yn; 
yn =(1+gamma_n)/(gamma+gamma_n+alpha*(1-gamma))*a + (1-alpha)/(gamma+gamma_n+alpha*(1-gamma))*(chi + eps/(epsilon-1));
rn = 1/(gamma+gamma_n+alpha*(1-gamma))*((1-rhochi)*(gamma_n+alpha)*chi-(1-rhoeps)*gamma*(1-alpha)*eps/(epsilon-1) - gamma*(1-rhoa)*(1+gamma_n)*a); //Definition of the natural rate of interest
a = rhoa*a(-1)+ea;
emp = rhomp*emp(-1)+epsmp;
eps = rhoeps*eps(-1)+eeps;
chi = rhochi*chi(-1)+echi;
end;



// ======================================================================//
//          Part Three: Specification of variances of shocks             //
// ======================================================================//
 
shocks;
var ea = sigmaa^2;
var epsmp = sigmamp^2;
var eeps = sigmaeps^2;
var echi = sigmachi^2;
end;

// ======================================================================//
//                    Part Four: MODEL SOLUTION                          //
// Commands: stoch_simul, ...                                            //
// ======================================================================//

check; // Check the Blanchard-Kahn condition


stoch_simul; // Solves and simulates the model. 


