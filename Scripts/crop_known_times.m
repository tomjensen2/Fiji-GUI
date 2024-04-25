function data = crop_known_times(Data,times,back,forward,index)
if nargin==1
default_vars=defaultvars();
prompt = {'Times(s):','Time back(s):','Time forward(s):','Keep time index'};
dlgtitle = 'Helens cropping function';
dims = 1;
definput = {default_vars.times,default_vars.back,default_vars.forward,default_vars.keeptimeidx};
%definput = {'[0.2,0.3,0.4,0.5,0.6,0.7,0.8]','0.1','0.1','keep'};
answers=inputdlg(prompt,dlgtitle,dims,definput);
times=eval(answers{1,1}); back=eval(answers{2,1});forward=eval(answers{3,1});index=string(answers{4,1})
else

end
m=size(Data,1);
progressbar %set progressbar
for j=1:size(Data,1)
    
    
%     data=arrayfun(@(x) x.crop_data(x.TimeDim,times-back,times-end,"just do",[]),obj,UniformOutput=true)
    
    for i=1:size(times,2)
                crop_start=times(1,i)-back;
                crop_end=times(1,i)+forward;
                currentdataitem=copyobj2(Data(j,1));
                currentdataitem2(i,1)=currentdataitem.crop_data(currentdataitem.TimeDim,crop_start,crop_end,'just do',index);
                currentdataitem2(i,1).comment=sprintf('Crop| +/- %.2f| %s',times(1,i),currentdataitem2(i,1).comment);               
    end
                if j==1
                    data=currentdataitem2;
                else
                    data=cat(1,data,currentdataitem2);
                end
progressbar(j/m) %update progressbar
end

end