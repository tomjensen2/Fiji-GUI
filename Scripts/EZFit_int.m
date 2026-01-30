% ezfit(centres,N,'a_1*exp(-(x-m_1)^2/(2*s_1^2))','a_1=8;m_1=0.0;s_1=0.1;','fitcolor','blue','fitlinewidth',2)
% centres = edges(1:end-1)+mean(edges)/2
%str2func(sprintf('@(x)%d*exp(-(x-%d)^2/(2*%d^2)',lastfit.m(1),lastfit.m(2)l,astfit.m(3))
% str2func(sprintf('@(x)%d*exp(-(x-%d)^2/(2*%d^2)',lastfit.m(1),lastfit.m(2),lastfit.m(3))
% str2func(sprintf('@(x)%d*exp(-(x-%d)^2/(2*%d^2)',lastfit.m(1),lastfit.m(2),lastfit.m(3)))
% sprintf('@(x)%d*exp(-(x-%d)^2/(2*%d^2)',lastfit.m(1),lastfit.m(2),lastfit.m(3))
% sprintf('@(x)%d*exp(-(x-%d)^2/(2*%d^2))',lastfit.m(1),lastfit.m(2),lastfit.m(3))
str2func(sprintf('@(x)%d*exp(-(x-%d)^2/(2*%d^2))',lastfit.m(1),lastfit.m(2),lastfit.m(3)))
% arrayfun(fittedfunc1,centres)
% bar(centres,N)
% hold on
% plot(centres,fitfunc1)
% ezfit(centres,N,'a_1*exp(-(x-m_1)^2/(2*s_1^2))','a_1=8;m_1=0.0;s_1;','fitcolor','blue','fitlinewidth',2)
% ezfit(centres,N,'a_1*exp(-(x-m_1)^2/(2*s_1^2))','a_1=;m_1=0.0;s_1;','fitcolor','blue','fitlinewidth',2)
% 

%EZFit interface
%% Gaussian Mixture Fits
%% 1 gaussian
gauss1='a_1*exp(-(x-m_1)^2/(2*s_1^2));'
%% 2 gaussian
gauss2='a_1*exp(-(x-m_1)^2/(2*s_1^2))+a_2*exp(-(x-m_2)^2/(2*s_2^2));'
%% 3 gaussian
gauss3='a_1*exp(-(x-m_1)^2/(2*s_1^2))+a_2*exp(-(x-m_2)^2/(2*s_2^2))+a_3*exp(-(x-m_3)^2/(2*s_3^2));'
%% 4 gaussian
gauss4='a_1*exp(-(x-m_1)^2/(2*s_1^2))+a_2*exp(-(x-m_2)^2/(2*s_2^2))+a_3*exp(-(x-m_3)^2/(2*s_3^2))+a_4*exp(-(x-m_4)^2/(2*s_4^2));'
%% 5 gaussian
gauss5='a_1*exp(-(x-m_1)^2/(2*s_1^2))+a_2*exp(-(x-m_2)^2/(2*s_2^2))+a_3*exp(-(x-m_3)^2/(2*s_3^2))+a_4*exp(-(x-m_4)^2/(2*s_4^2))+a_5*exp(-(x-m_5)^2/(2*s_5^2));'
%% Variables
%a_= amplitude
%m_= Mean
%s_= Width
a_1='a_1=8;'
m_1='m_1=0.0;'
s_1='s_1=0.1;'

a_2='a_2=;'
m_2='m_2=;'
s_2='s_2=;'

a_3='a_3=;'
m_3='m_3=;'
s_3='s_3=;'

a_4='a_4=;'
m_4='m_4=;'
s_4='s_4=;'

a_5='a_5=;'
m_5='m_5=;'
s_5='s_5=;'
% a_1=120; m_1=7; a_2 = 40;
start='showfit('''
therest=',''fitcolor'',''blue'',''fitlinewidth'',2)'

undofit %undo previous
fit1gauss=sprintf('%s%s%s%s%s%s''%s',start, gauss1, a_1, m_1, s_1 , therest)
fit2gauss=sprintf('%s%s%s%s%s%s%s%s''%s',start, gauss2, a_1, m_1 , s_1, a_2, m_2 , s_2, therest)
fit3gauss=sprintf('%s%s%s%s%s%s%s%s%s%s%s''%s',start, gauss3, a_1, m_1 , s_1 ,a_2, m_2, s_2, a_3, m_3, s_3, therest)
fit4gauss=sprintf('%s%s%s%s%s%s%s%s%s%s%s%s%s%s''%s',start, gauss4, a_1, m_1, s_1, a_2, m_2, s_2, a_3, m_3, s_3,a_4, m_4, s_4, therest)
fit5gauss=sprintf('%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s''%s',start, gauss5, a_1, m_1, s_1, a_2, m_2, s_2, a_3, m_3, s_3,a_4, m_4, s_4,a_5, m_5, s_5, therest)
fitexp=sprintf('showfit(''a*-exp(0.02*x);a=peaks,''fitcolor'',''blue'',''fitlinewidth'',2);',peaks)

undofit
eval(fit1gauss)


%%
%EZFit interface
%% Expnential Mixture Fits
showfit('f(t)=a*exp(-t/tau)','fitlinewidth',2,'fitcolor','red');
% Equation: f(t) = a*exp(-t/tau)
%      a = 4.3409
%      tau = 4.397
%      R = 0.99697  (lin)
% 
% 
%% 1 gaussian
gauss1='a*exp(-t/tau);'
%% 2 gaussian
gauss2='a_1*exp(-(x-m_1)^2/(2*s_1^2))+a_2*exp(-(x-m_2)^2/(2*s_2^2));'
%% 3 gaussian
gauss3='a_1*exp(-(x-m_1)^2/(2*s_1^2))+a_2*exp(-(x-m_2)^2/(2*s_2^2))+a_3*exp(-(x-m_3)^2/(2*s_3^2));'
%% 4 gaussian
gauss4='a_1*exp(-(x-m_1)^2/(2*s_1^2))+a_2*exp(-(x-m_2)^2/(2*s_2^2))+a_3*exp(-(x-m_3)^2/(2*s_3^2))+a_4*exp(-(x-m_4)^2/(2*s_4^2));'
%% 5 gaussian
gauss5='a_1*exp(-(x-m_1)^2/(2*s_1^2))+a_2*exp(-(x-m_2)^2/(2*s_2^2))+a_3*exp(-(x-m_3)^2/(2*s_3^2))+a_4*exp(-(x-m_4)^2/(2*s_4^2))+a_5*exp(-(x-m_5)^2/(2*s_5^2));'
%% Variables
%a_= amplitude
%m_= Mean
%s_= Width
