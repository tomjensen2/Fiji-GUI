function displaypatterns2(data)
figure
f=tiledlayout('flow')
if data.scanline.Type=="composite"

    
noplots=size(data.scanline.ODDarray,2)

for i=1:noplots
    t(i)=nexttile(f);
    data.DisplayBKG(1,t(i));
    hold(t(i),'on');
    scatter(t(i),data.scanline.ODDarray(i).Data1(1,:),data.scanline.ODDarray(i).Data1(2,:),5,"yellow",'Tag','Display','AlphaData',0.5);
    
end
else
    t=nexttile(f)
    data.DisplayBKG(1,t);
    hold(t,'on')
    data.Scatter_Scanline_on_Image(t,min(data.YData),max(data.YData),2,0);
end
end