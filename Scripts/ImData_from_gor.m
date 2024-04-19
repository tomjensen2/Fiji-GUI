function objout = ImData_from_gor(filename)
load(filename,'-mat');

for item=1:size(DATA,1)
    objout(item,1)=ImData;
    objout(item,1).Type='Line1';
    objout(item,1).file='Line1';
    objout(item,1).TData=linspace(DATA(item,1).x(1),DATA(item,1).x(2)*size(DATA(item,1).y,1),size(DATA(item,1).y,1))/1000;
    objout(item,1).XData=linspace(DATA(item,1).x(1),DATA(item,1).x(2)*size(DATA(item,1).y,1),size(DATA(item,1).y,1))/1000;
    objout(item,1).UG=DATA(item,1).y.';
    objout(item,1).UR=zeros(1,size(objout(item,1).UG,2));
    objout(item,1).comment=DATA(item,1).comment;
    objout(item,1).Aux1=zeros(1,size(objout(item,1).UG,2));
    objout(item,1).eXData=linspace(DATA(item,1).x(1),DATA(item,1).x(2)*size(DATA(item,1).y,1),size(DATA(item,1).y,1))/1000;
    objout(item, 1).linetime=objout(item,1).TData(2)-objout(item,1).TData(1);
end
end