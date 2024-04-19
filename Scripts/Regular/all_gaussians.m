coefs=zeros(30,1)

coefs([1:size(pastedcoefs,1)],1)=pastedcoefs
% 

q1=str2func(sprintf('@(x)%d*exp(-((x-%d)/%d)^2)',coefs(1,1),coefs(2,1),coefs(3,1)))
q2=str2func(sprintf('@(x)%d*exp(-((x-%d)/%d)^2)',coefs(4,1),coefs(5,1),coefs(6,1)))
q3=str2func(sprintf('@(x)%d*exp(-((x-%d)/%d)^2)',coefs(7,1),coefs(8,1),coefs(9,1)))
q4=str2func(sprintf('@(x)%d*exp(-((x-%d)/%d)^2)',coefs(10,1),coefs(11,1),coefs(12,1)))
q5=str2func(sprintf('@(x)%d*exp(-((x-%d)/%d)^2)',coefs(13,1),coefs(14,1),coefs(15,1)))
q6=str2func(sprintf('@(x)%d*exp(-((x-%d)/%d)^2)',coefs(16,1),coefs(17,1),coefs(18,1)))

%generates X values to evaluate intersection area i.e. peak 1-peak 2
x1=coefs(2,1):0.01:coefs(5,1) %q1 maximum bounds q2 minimum bounds
x2=coefs(5,1):0.01:coefs(8,1) %q2 maximum bounds q3 minimum bounds
x3=coefs(8,1):0.01:coefs(11,1) %q3 maximum bounds q4 minimum bounds
x4=coefs(11,1):0.01:coefs(14,1) %q4 maximum bounds q5 minimum bounds
x5=coefs(14,1):0.01:coefs(17,1) %q5 maximum bounds q6 minimum bounds
% x6=b5:0.01:b6 %q6 maximum bounds q3 minimum bounds
try
%Y values for q1 and q2 over centre1-centre2
func1=arrayfun(q1,x1)    
func2=arrayfun(q2,x1)
minimumQ2=InterX([x1;func1],[x1;func2])

%Y values for q1 and q2 over centre1-centre2
func1=arrayfun(q2,x2)    
func2=arrayfun(q3,x2)
maximumQ2=InterX([x2;func1],[x2;func2])

%Y values for q1 and q2 over centre1-centre2
func1=arrayfun(q3,x3)    
func2=arrayfun(q4,x3)
maximumQ3=InterX([x3;func1],[x3;func2])

%Y values for q1 and q2 over centre1-centre2
func1=arrayfun(q4,x4)    
func2=arrayfun(q5,x4)
maximumQ4=InterX([x4;func1],[x4;func2])

%Y values for q1 and q2 over centre1-centre2
func1=arrayfun(q5,x5)    
func2=arrayfun(q6,x5)
maximumQ5=InterX([x5;func1],[x5;func2])
catch
    
end
%Y values for q1 and q2 over centre1-centre2
% func1=arrayfun(q5,x6)    
% func2=arrayfun(q6,x6)
% maximumQ6=InterX([x6;func1],[x6;func2])

boundsq1=[-inf,minimumQ2(1)] 
% boundsq2=[minimumQ2(1),maximumQ2(1)]
% boundsq3=[maximumQ2(1),maximumQ3(1)]
% boundsq4=[maximumQ3(1),maximumQ4(1)]
% boundsq5=[maximumQ4(1),maximumQ5(1)]
% boundsq6=[maximumQ5(1),inf]
% iGluAmp=app.tempBoutonData.iGlu_amp
% iGluResp=app.tempBoutonData.iGlu_Resp

qConv=iGluAmp
qConv(iGluResp==0)=0
qConv(qConv>0.001 & qConv<boundsq1(2))=1

switch size(pastedcoefs,1)
    
case 6
% boundsq2=[minimumQ2(1),maximumQ2(1)]
qConv(qConv~=0 & qConv~=1)=2

case 9
boundsq2=[minimumQ2(1),maximumQ2(1)]
% boundsq3=[maximumQ2(1),maximumQ3(1)]        
        
qConv(qConv>boundsq2(1) & qConv<boundsq2(2))=2
qConv(qConv~=0 & qConv~=1 & qConv~=2)=3
case 12
boundsq2=[minimumQ2(1),maximumQ2(1)]
boundsq3=[maximumQ2(1),maximumQ3(1)]
% boundsq4=[maximumQ3(1),maximumQ4(1)]        
        
qConv(qConv>boundsq2(1) & qConv<boundsq2(2))=2
qConv(qConv>boundsq3(1) & qConv<boundsq3(2))=3
qConv(qConv~=0 & qConv~=1 & qConv~=2 & qConv~=3)=4
    case 15
boundsq2=[minimumQ2(1),maximumQ2(1)]
boundsq3=[maximumQ2(1),maximumQ3(1)]
boundsq4=[maximumQ3(1),maximumQ4(1)]
% boundsq5=[maximumQ4(1),maximumQ5(1)]
        
qConv(qConv>boundsq2(1) & qConv<boundsq2(2))=2
qConv(qConv>boundsq3(1) & qConv<boundsq3(2))=3
qConv(qConv>boundsq4(1) & qConv<boundsq4(2))=4
qConv(qConv~=0 & qConv~=1 & qConv~=2 & qConv~=3 & qConv~=4)=5
    case 18
boundsq2=[minimumQ2(1),maximumQ2(1)]
boundsq3=[maximumQ2(1),maximumQ3(1)]
boundsq4=[maximumQ3(1),maximumQ4(1)]
boundsq5=[maximumQ4(1),maximumQ5(1)]
% boundsq6=[maximumQ5(1),inf]        
        
qConv(qConv>boundsq2(1) & qConv<boundsq2(2))=2
qConv(qConv>boundsq3(1) & qConv<boundsq3(2))=3
qConv(qConv>boundsq4(1) & qConv<boundsq4(2))=4
qConv(qConv>boundsq5(1) & qConv<boundsq5(2))=5
qConv(qConv~=0 & qConv~=1 & qConv~=2 & qConv~=3 & qConv~=4 & qConv~=5)=6
end
% app.tempBoutonData.Q_Resp=qConv