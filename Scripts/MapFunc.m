function val= MapFunc(data)
%OP_MAPFUNC converts input scalar value to output scalar value according to
%the function specified
%   1. calibration function in the fucntion libarary is inverse logistic x=x0*((a1-y)/(y-a2))^(1/p))
%
%   2. Mapping function of scalar to scalar
%
% --- Function Library ---
%----------------------------------------------------------------------
%---OGB1---
%------- BH NCPCA test ------
%1det_32C: '@(x)121.58582.*((1.14801-x)./(x-11.02362)).^(1/1.3827)'
%------- BH 2ns NTC interval ------
%1det_19C: '@(x)151.91127.*((0.26097-x)./(x-0.78784)).^(1/1.09167)'
%1det_29C: '@(x)151.57067.*((0.25048-x)./(x-0.78664)).^(1/1.09806)'
%1det_32C: '@(x)150.79112.*((0.24551-x)./(x-0.78859)).^(1/1.08849)'
%------- BH 9ns NTC interval ------
%2det_19C: '@(x)136.49971.*((0.09783-x)./(x-0.39175)).^(1/1.10709)'
%1det_19C: '@(x)164.44795.*((0.06528-x)./(x-0.40378)).^(1/1.0953)'
%1det_32C: '@(x)165.63428.*((0.06433-x)./(x-0.39384)).^(1/1.09587)'
%------- PQ 9ns NTC interval ------
%1det_33C_9ns:
%'@(x)233.97304.*((0.07434-x)./(x-0.37527)).^(1/1.08896)'(ION)
%1det_33C_hg_NTC(5-11ns)
%'@(x)280.12795.*((0.00262-x)./(x-0.16096)).^(1/1.08213)'(ION)
%1det_33C_9ns:
%'@(x)181.39721.*((0.08885-x)./(x-0.38816)).^(1/1.25546)'(UCL)
%------- BH femtonics 9ns NTC interval ------
%1det_33C_UG_9ns: '@(x)128.54063*((0.06294-x)./(x-0.37057)).^(1/1.12492)'
%------------Olga T--------------------------
%------- BH femtonics 9ns NTC interval ------
%1det_34C_UG_9ns: '@(x)146.58*((0.09048-x)./(x-0.32)).^(1/1.03059)'
%1det_34C_UG_9ns: '@(x)139.06885*((0.08921-x)./(x-0.37016)).^(1/0.99636)'(KAI)
%----------------------------------------------------------------------
% --- OGB2 ---
%------- PQ 9ns NTC interval ------
%1det_32C_9ns: '@(x)335.85038.*((0.09304-x)./(x-0.34433)).^(1/1.08089)'
%----------------------------------------------------------------------
% --- Cal590 @910nm excitation ---
%------- BH femtonics 9ns NTC interval ------
%1det_33C_UR_9ns: '@(x)46.55257*((0.05829-x)./(x-0.2305)).^(1/1.88335)'
%------- BH femtonics 3ns NTC interval ------
%1det_33C_UR_3ns_bgcorr: '@(x)46.65768*((0.14742-x)./(x-0.53825)).^(1/1.95332)'
%--------------------------------------------
%
%---Batch process----------------------------------------------------------
%   Parameter=struct('selected_data','1','calib_func','@(x)128.54063*((0.06294-x)./(x-0.37057)).^(1/1.12492)','t_disp_bound','[0,200,128]','disp_lb','20','disp_ub','100','parameter_space','[Ca2+]');
%   selected_data=data index, 1 means previous generated data
%   calib_func='@(x)', calibration function used to map values
%   t_disp_bound=[0,200,128], display bound with [min,max,nlevels]
%   disp_lb=20, display value lower bound
%   disp_ub=100, display value upper bound
%   parameter_space='[Ca2+]', name for generated parameters
%--------------------------------------------------------------------------
%   HEADER END

parameters=struct('note','',...
    'operator','op_MapFunc',...
    'parameter_space','[Ca2+]',...
    't_disp_bound',[0,200,128],...
    'disp_lb',20,...
    'disp_ub',100,...
    'calib_func','@(x)46.65768*((0.14742-x)./(x-0.53825)).^(1/1.95332)');

% assume worst
status=false;
% for batch process must return 'Data parentidx to childidx *' for each
% successful calculation
message='';
askforparam=true;

calib_func=str2func(parameters.calib_func);
val=calib_func(data);
val(imag(val)~=0)=nan;%rid of imaginary
val(isinf(val))=nan;%rid of infinity
val=reshape(val,size(data));

end