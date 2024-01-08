%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'BBBmodel';
M_.dynare_version = '4.5.6';
oo_.dynare_version = '4.5.6';
options_.dynare_version = '4.5.6';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('BBBmodel.log');
M_.exo_names = 'ea';
M_.exo_names_tex = 'ea';
M_.exo_names_long = 'ea';
M_.exo_names = char(M_.exo_names, 'eg');
M_.exo_names_tex = char(M_.exo_names_tex, 'eg');
M_.exo_names_long = char(M_.exo_names_long, 'eg');
M_.exo_names = char(M_.exo_names, 'echi');
M_.exo_names_tex = char(M_.exo_names_tex, 'echi');
M_.exo_names_long = char(M_.exo_names_long, 'echi');
M_.exo_names = char(M_.exo_names, 'emp');
M_.exo_names_tex = char(M_.exo_names_tex, 'emp');
M_.exo_names_long = char(M_.exo_names_long, 'emp');
M_.endo_names = 'y';
M_.endo_names_tex = 'y';
M_.endo_names_long = 'y';
M_.endo_names = char(M_.endo_names, 'yn');
M_.endo_names_tex = char(M_.endo_names_tex, 'yn');
M_.endo_names_long = char(M_.endo_names_long, 'yn');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi');
M_.endo_names_long = char(M_.endo_names_long, 'pi');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'a');
M_.endo_names = char(M_.endo_names, 'x');
M_.endo_names_tex = char(M_.endo_names_tex, 'x');
M_.endo_names_long = char(M_.endo_names_long, 'x');
M_.endo_names = char(M_.endo_names, 'chi');
M_.endo_names_tex = char(M_.endo_names_tex, 'chi');
M_.endo_names_long = char(M_.endo_names_long, 'chi');
M_.endo_names = char(M_.endo_names, 'rn');
M_.endo_names_tex = char(M_.endo_names_tex, 'rn');
M_.endo_names_long = char(M_.endo_names_long, 'rn');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'i');
M_.endo_names = char(M_.endo_names, 'amp');
M_.endo_names_tex = char(M_.endo_names_tex, 'amp');
M_.endo_names_long = char(M_.endo_names_long, 'amp');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, 'n');
M_.endo_names_long = char(M_.endo_names_long, 'n');
M_.endo_names = char(M_.endo_names, 'rw');
M_.endo_names_tex = char(M_.endo_names_tex, 'rw');
M_.endo_names_long = char(M_.endo_names_long, 'rw');
M_.endo_names = char(M_.endo_names, 'mc');
M_.endo_names_tex = char(M_.endo_names_tex, 'mc');
M_.endo_names_long = char(M_.endo_names_long, 'mc');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_partitions = struct();
M_.param_names = 'theta';
M_.param_names_tex = 'theta';
M_.param_names_long = 'theta';
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'rhoa');
M_.param_names_tex = char(M_.param_names_tex, 'rhoa');
M_.param_names_long = char(M_.param_names_long, 'rhoa');
M_.param_names = char(M_.param_names, 'rhog');
M_.param_names_tex = char(M_.param_names_tex, 'rhog');
M_.param_names_long = char(M_.param_names_long, 'rhog');
M_.param_names = char(M_.param_names, 'rhochi');
M_.param_names_tex = char(M_.param_names_tex, 'rhochi');
M_.param_names_long = char(M_.param_names_long, 'rhochi');
M_.param_names = char(M_.param_names, 'rhomp');
M_.param_names_tex = char(M_.param_names_tex, 'rhomp');
M_.param_names_long = char(M_.param_names_long, 'rhomp');
M_.param_names = char(M_.param_names, 'sigmaa');
M_.param_names_tex = char(M_.param_names_tex, 'sigmaa');
M_.param_names_long = char(M_.param_names_long, 'sigmaa');
M_.param_names = char(M_.param_names, 'sigmag');
M_.param_names_tex = char(M_.param_names_tex, 'sigmag');
M_.param_names_long = char(M_.param_names_long, 'sigmag');
M_.param_names = char(M_.param_names, 'sigmachi');
M_.param_names_tex = char(M_.param_names_tex, 'sigmachi');
M_.param_names_long = char(M_.param_names_long, 'sigmachi');
M_.param_names = char(M_.param_names, 'gamma');
M_.param_names_tex = char(M_.param_names_tex, 'gamma');
M_.param_names_long = char(M_.param_names_long, 'gamma');
M_.param_names = char(M_.param_names, 'gamma_n');
M_.param_names_tex = char(M_.param_names_tex, 'gamma\_n');
M_.param_names_long = char(M_.param_names_long, 'gamma_n');
M_.param_names = char(M_.param_names, 'lambda');
M_.param_names_tex = char(M_.param_names_tex, 'lambda');
M_.param_names_long = char(M_.param_names_long, 'lambda');
M_.param_names = char(M_.param_names, 'Y');
M_.param_names_tex = char(M_.param_names_tex, 'Y');
M_.param_names_long = char(M_.param_names_long, 'Y');
M_.param_names = char(M_.param_names, 'C');
M_.param_names_tex = char(M_.param_names_tex, 'C');
M_.param_names_long = char(M_.param_names_long, 'C');
M_.param_names = char(M_.param_names, 'G');
M_.param_names_tex = char(M_.param_names_tex, 'G');
M_.param_names_long = char(M_.param_names_long, 'G');
M_.param_names = char(M_.param_names, 'phi_pi');
M_.param_names_tex = char(M_.param_names_tex, 'phi\_pi');
M_.param_names_long = char(M_.param_names_long, 'phi_pi');
M_.param_names = char(M_.param_names, 'phi_x');
M_.param_names_tex = char(M_.param_names_tex, 'phi\_x');
M_.param_names_long = char(M_.param_names_long, 'phi_x');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, 'kappa');
M_.param_names_long = char(M_.param_names_long, 'kappa');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 15;
M_.param_nbr = 18;
M_.orig_endo_nbr = 15;
M_.aux_vars = [];
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('BBBmodel_static');
erase_compiled_function('BBBmodel_dynamic');
M_.orig_eq_nbr = 15;
M_.eq_nbr = 15;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 6 21;
 0 7 0;
 1 8 22;
 2 9 0;
 0 10 0;
 3 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 4 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 5 20 0;]';
M_.nstatic = 9;
M_.nfwrd   = 1;
M_.npred   = 4;
M_.nboth   = 1;
M_.nsfwrd   = 2;
M_.nspred   = 5;
M_.ndynamic   = 6;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(15, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(18, 1);
M_.NNZDerivatives = [55; 0; -1];
M_.params( 1 ) = 0.2;
theta = M_.params( 1 );
M_.params( 2 ) = 0.99;
beta = M_.params( 2 );
M_.params( 3 ) = 0.95;
rhoa = M_.params( 3 );
M_.params( 4 ) = 0.5;
rhog = M_.params( 4 );
M_.params( 5 ) = 0.6;
rhochi = M_.params( 5 );
M_.params( 6 ) = 0.8;
rhomp = M_.params( 6 );
M_.params( 7 ) = 1;
sigmaa = M_.params( 7 );
M_.params( 8 ) = 1;
sigmag = M_.params( 8 );
M_.params( 9 ) = 1;
sigmachi = M_.params( 9 );
sigmaemp = 1;
M_.params( 10 ) = 3;
gamma = M_.params( 10 );
M_.params( 11 ) = 2;
gamma_n = M_.params( 11 );
M_.params( 12 ) = 0.5;
lambda = M_.params( 12 );
M_.params( 13 ) = 1;
Y = M_.params( 13 );
M_.params( 14 ) = 0.6;
C = M_.params( 14 );
M_.params( 15 ) = 0.25;
G = M_.params( 15 );
M_.params( 18 ) = M_.params(1)*(1-M_.params(1))*(1-M_.params(1)*M_.params(2))/(1+M_.params(1)*M_.params(2))*(M_.params(11)+M_.params(10)*M_.params(13)/M_.params(14));
kappa = M_.params( 18 );
M_.params( 16 ) = 1.5;
phi_pi = M_.params( 16 );
M_.params( 17 ) = 0.5;
phi_x = M_.params( 17 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = M_.params(7)^2;
M_.Sigma_e(2, 2) = M_.params(8)^2;
M_.Sigma_e(3, 3) = M_.params(9)^2;
M_.Sigma_e(4, 4) = sigmaemp^2;
oo_.dr.eigval = check(M_,options_,oo_);
var_list_ = char();
info = stoch_simul(var_list_);
save('BBBmodel_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('BBBmodel_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('BBBmodel_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('BBBmodel_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('BBBmodel_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('BBBmodel_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('BBBmodel_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
