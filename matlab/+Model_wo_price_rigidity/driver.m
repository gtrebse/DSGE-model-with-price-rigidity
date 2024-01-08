%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'Model_wo_price_rigidity';
M_.dynare_version = '4.6.4';
oo_.dynare_version = '4.6.4';
options_.dynare_version = '4.6.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Model_wo_price_rigidity.log');
M_.exo_names = cell(5,1);
M_.exo_names_tex = cell(5,1);
M_.exo_names_long = cell(5,1);
M_.exo_names(1) = {'ea'};
M_.exo_names_tex(1) = {'ea'};
M_.exo_names_long(1) = {'ea'};
M_.exo_names(2) = {'echi'};
M_.exo_names_tex(2) = {'echi'};
M_.exo_names_long(2) = {'echi'};
M_.exo_names(3) = {'eepsilon'};
M_.exo_names_tex(3) = {'eepsilon'};
M_.exo_names_long(3) = {'eepsilon'};
M_.exo_names(4) = {'eg'};
M_.exo_names_tex(4) = {'eg'};
M_.exo_names_long(4) = {'eg'};
M_.exo_names(5) = {'emp'};
M_.exo_names_tex(5) = {'emp'};
M_.exo_names_long(5) = {'emp'};
M_.endo_names = cell(16,1);
M_.endo_names_tex = cell(16,1);
M_.endo_names_long = cell(16,1);
M_.endo_names(1) = {'y'};
M_.endo_names_tex(1) = {'y'};
M_.endo_names_long(1) = {'y'};
M_.endo_names(2) = {'yn'};
M_.endo_names_tex(2) = {'yn'};
M_.endo_names_long(2) = {'yn'};
M_.endo_names(3) = {'pi'};
M_.endo_names_tex(3) = {'pi'};
M_.endo_names_long(3) = {'pi'};
M_.endo_names(4) = {'n'};
M_.endo_names_tex(4) = {'n'};
M_.endo_names_long(4) = {'n'};
M_.endo_names(5) = {'a'};
M_.endo_names_tex(5) = {'a'};
M_.endo_names_long(5) = {'a'};
M_.endo_names(6) = {'c'};
M_.endo_names_tex(6) = {'c'};
M_.endo_names_long(6) = {'c'};
M_.endo_names(7) = {'r'};
M_.endo_names_tex(7) = {'r'};
M_.endo_names_long(7) = {'r'};
M_.endo_names(8) = {'rn'};
M_.endo_names_tex(8) = {'rn'};
M_.endo_names_long(8) = {'rn'};
M_.endo_names(9) = {'x'};
M_.endo_names_tex(9) = {'x'};
M_.endo_names_long(9) = {'x'};
M_.endo_names(10) = {'rw'};
M_.endo_names_tex(10) = {'rw'};
M_.endo_names_long(10) = {'rw'};
M_.endo_names(11) = {'mc'};
M_.endo_names_tex(11) = {'mc'};
M_.endo_names_long(11) = {'mc'};
M_.endo_names(12) = {'g'};
M_.endo_names_tex(12) = {'g'};
M_.endo_names_long(12) = {'g'};
M_.endo_names(13) = {'chi'};
M_.endo_names_tex(13) = {'chi'};
M_.endo_names_long(13) = {'chi'};
M_.endo_names(14) = {'i'};
M_.endo_names_tex(14) = {'i'};
M_.endo_names_long(14) = {'i'};
M_.endo_names(15) = {'epsilon'};
M_.endo_names_tex(15) = {'epsilon'};
M_.endo_names_long(15) = {'epsilon'};
M_.endo_names(16) = {'amp'};
M_.endo_names_tex(16) = {'amp'};
M_.endo_names_long(16) = {'amp'};
M_.endo_partitions = struct();
M_.param_names = cell(16,1);
M_.param_names_tex = cell(16,1);
M_.param_names_long = cell(16,1);
M_.param_names(1) = {'Y'};
M_.param_names_tex(1) = {'Y'};
M_.param_names_long(1) = {'Y'};
M_.param_names(2) = {'C'};
M_.param_names_tex(2) = {'C'};
M_.param_names_long(2) = {'C'};
M_.param_names(3) = {'G'};
M_.param_names_tex(3) = {'G'};
M_.param_names_long(3) = {'G'};
M_.param_names(4) = {'beta'};
M_.param_names_tex(4) = {'beta'};
M_.param_names_long(4) = {'beta'};
M_.param_names(5) = {'theta'};
M_.param_names_tex(5) = {'theta'};
M_.param_names_long(5) = {'theta'};
M_.param_names(6) = {'epsilon_elast'};
M_.param_names_tex(6) = {'epsilon\_elast'};
M_.param_names_long(6) = {'epsilon_elast'};
M_.param_names(7) = {'gamma'};
M_.param_names_tex(7) = {'gamma'};
M_.param_names_long(7) = {'gamma'};
M_.param_names(8) = {'gamma_n'};
M_.param_names_tex(8) = {'gamma\_n'};
M_.param_names_long(8) = {'gamma_n'};
M_.param_names(9) = {'rho_a'};
M_.param_names_tex(9) = {'rho\_a'};
M_.param_names_long(9) = {'rho_a'};
M_.param_names(10) = {'rho_g'};
M_.param_names_tex(10) = {'rho\_g'};
M_.param_names_long(10) = {'rho_g'};
M_.param_names(11) = {'rho_chi'};
M_.param_names_tex(11) = {'rho\_chi'};
M_.param_names_long(11) = {'rho_chi'};
M_.param_names(12) = {'rho_epsilon'};
M_.param_names_tex(12) = {'rho\_epsilon'};
M_.param_names_long(12) = {'rho_epsilon'};
M_.param_names(13) = {'rho_mp'};
M_.param_names_tex(13) = {'rho\_mp'};
M_.param_names_long(13) = {'rho_mp'};
M_.param_names(14) = {'phi_pi'};
M_.param_names_tex(14) = {'phi\_pi'};
M_.param_names_long(14) = {'phi_pi'};
M_.param_names(15) = {'phi_x'};
M_.param_names_tex(15) = {'phi\_x'};
M_.param_names_long(15) = {'phi_x'};
M_.param_names(16) = {'kappa'};
M_.param_names_tex(16) = {'kappa'};
M_.param_names_long(16) = {'kappa'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 16;
M_.param_nbr = 16;
M_.orig_endo_nbr = 16;
M_.aux_vars = [];
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 16;
M_.eq_nbr = 16;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 7 23;
 0 8 0;
 0 9 24;
 0 10 0;
 1 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 2 18 0;
 3 19 0;
 4 20 0;
 5 21 0;
 6 22 0;]';
M_.nstatic = 8;
M_.nfwrd   = 2;
M_.npred   = 6;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 6;
M_.ndynamic   = 8;
M_.dynamic_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'y' ;
  2 , 'name' , 'pi' ;
  3 , 'name' , 'c' ;
  4 , 'name' , '4' ;
  5 , 'name' , 'x' ;
  6 , 'name' , 'rn' ;
  7 , 'name' , 'yn' ;
  8 , 'name' , 'rw' ;
  9 , 'name' , 'mc' ;
  10 , 'name' , 'i' ;
  11 , 'name' , 'r' ;
  12 , 'name' , 'g' ;
  13 , 'name' , 'a' ;
  14 , 'name' , 'chi' ;
  15 , 'name' , 'epsilon' ;
  16 , 'name' , 'amp' ;
};
M_.mapping.y.eqidx = [1 3 4 5 9 ];
M_.mapping.yn.eqidx = [5 7 ];
M_.mapping.pi.eqidx = [2 10 11 ];
M_.mapping.n.eqidx = [4 8 ];
M_.mapping.a.eqidx = [4 6 7 9 13 ];
M_.mapping.c.eqidx = [3 8 ];
M_.mapping.r.eqidx = [1 11 ];
M_.mapping.rn.eqidx = [6 ];
M_.mapping.x.eqidx = [2 5 10 ];
M_.mapping.rw.eqidx = [8 ];
M_.mapping.mc.eqidx = [9 ];
M_.mapping.g.eqidx = [1 3 6 7 9 12 ];
M_.mapping.chi.eqidx = [1 6 7 8 9 14 ];
M_.mapping.i.eqidx = [10 11 ];
M_.mapping.epsilon.eqidx = [1 6 7 15 ];
M_.mapping.amp.eqidx = [16 ];
M_.mapping.ea.eqidx = [13 ];
M_.mapping.echi.eqidx = [14 ];
M_.mapping.eepsilon.eqidx = [15 ];
M_.mapping.eg.eqidx = [12 ];
M_.mapping.emp.eqidx = [10 16 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 12 13 14 15 16 ];
M_.exo_names_orig_ord = [1:5];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(16, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(16, 1);
M_.endo_trends = struct('deflator', cell(16, 1), 'log_deflator', cell(16, 1), 'growth_factor', cell(16, 1), 'log_growth_factor', cell(16, 1));
M_.NNZDerivatives = [60; 0; -1; ];
M_.static_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 1;
Y = M_.params(1);
M_.params(2) = 0.6;
C = M_.params(2);
M_.params(3) = 0.25;
G = M_.params(3);
M_.params(4) = 0.95;
beta = M_.params(4);
M_.params(5) = 0.66;
theta = M_.params(5);
M_.params(6) = 7.3;
epsilon_elast = M_.params(6);
M_.params(7) = 3;
gamma = M_.params(7);
M_.params(8) = 2;
gamma_n = M_.params(8);
sigma_a=1;
sigma_g=1;
sigma_chi=1;
sigma_epsilon=1;
sigma_mp=1;
M_.params(9) = 0.95;
rho_a = M_.params(9);
M_.params(10) = 0.8;
rho_g = M_.params(10);
M_.params(11) = 0.9;
rho_chi = M_.params(11);
M_.params(12) = 0.5;
rho_epsilon = M_.params(12);
M_.params(13) = 0.8;
rho_mp = M_.params(13);
M_.params(14) = 2.5;
phi_pi = M_.params(14);
M_.params(15) = 0.8;
phi_x = M_.params(15);
M_.params(16) = (1-M_.params(5))*(1-M_.params(5)*M_.params(4))/M_.params(5)*(M_.params(8)+M_.params(7)*M_.params(1)/M_.params(2));
kappa = M_.params(16);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = sigma_a^2;
M_.Sigma_e(2, 2) = sigma_chi^2;
M_.Sigma_e(3, 3) = sigma_epsilon^2;
M_.Sigma_e(4, 4) = sigma_g^2;
M_.Sigma_e(5, 5) = sigma_mp^2;
oo_.dr.eigval = check(M_,options_,oo_);
options_.nograph = true;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('Model_wo_price_rigidity_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Model_wo_price_rigidity_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Model_wo_price_rigidity_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Model_wo_price_rigidity_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Model_wo_price_rigidity_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Model_wo_price_rigidity_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Model_wo_price_rigidity_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
