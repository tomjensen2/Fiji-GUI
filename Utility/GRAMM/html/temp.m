 for i=1:size(Dataitem,1);
            %set all time indexes to start at 0
            Dataitem(i,1).TData=Dataitem(i,1).TData-Dataitem(i,1).TData(1);
            Dataitem(i,1).eXData=Dataitem(i,1).eXData-Dataitem(i,1).eXData(1);
            linetime(i,1)=Dataitem(i,1).linetime;    %get scan rate of all recordings
            duration(i,1)=max(Dataitem(i,1).TData);  %get durations
            end
            %determine min and max scan rates and max duration
            minlinetime=min(linetime);
            maxlinetime=max(linetime);
            maxDuration=max(duration);
            %Ask for final scan interval
            Scaninterval = inputdlg(sprintf('Imaging Scan Interval, minimum = %d, maximum= %d',minlinetime,maxlinetime),'Equalise Scan Rate',[1 55],{num2str(minlinetime)});
            Scaninterval=str2double(Scaninterval{1,1});
            
            for i=1:size(Dataitem,1)
                 
            %Output mean traces in both channels   
            [~,~,Prim_YData,TData,Sec_YData1,EP_TData,~,~] = Dataitem(i,1).Plot_TData_1D(1,1,[],1,0.1,0.7,1,[],[],[],[]);
            [~,~,Prim_YData2,TData2,Sec_YData2,~,~,~] = Dataitem(i,1).Plot_TData_1D(2,1,[],1,0.1,0.7,2,[],[],[],[]);
            UGPlotdata(i,:)=interp1(TData,Prim_YData,[0:Scaninterval:maxDuration]);
            URPlotdata(i,:)=interp1(TData2,Prim_YData2,0:Scaninterval:maxDuration);
            Aux1_Plotdata(i,:)=interp1(EP_TData,Sec_YData1,0:0.00001:maxDuration);
            Aux2_Plotdata(i,:)=interp1(EP_TData,Sec_YData2,0:0.00001:maxDuration);
           
             end