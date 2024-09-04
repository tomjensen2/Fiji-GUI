function [imgX,imgY,ephysx,ephysy] = trace_operations(prim,aux,Prim_Select,Aux_select,operation)
            
            
            imgX=prim.XData;
            imgY=prim.YData;

            try
                ephysx=aux.XData
                ephysy=aux.YData;
            end
            h=findobj('Tag','Gui1');
            app=h.RunningAppInstance;  

            if Prim_Select==1 & Aux_select==1
                switch operation
                    case "CropX/T"
                        app.Crop_Time_DImension
                        return
                    case "CropX/T-Peak"
                        app.crop_from_EP_tidx
                        return

                    case "Normalise"
                        max_val=1;baseline=0;
                        y_scaled=imgY-min(imgY);
                        y_scaled=y_scaled/max(y_scaled);
                        imgY=y_scaled*(max_val-baseline)+baseline;

                    case "Filter"
                        ephysy=sgolayfilt(ephysy,2,app.filterSpinner.Value);
                        imgY=sgolayfilt(imgY,2,app.filterSpinner.Value);
                        imgX=imgX;
                        ephysx=ephysx;
                    case "Deconv iGlu"
                        %                         quantal_amp = inputdlg('Enter Quantal Amplitude, or whatever');
                        %                         Q=cell2mat(quantal_amp);
                        %                         [imgX,imgY]=decon_iGluTrace(imgX,imgY,Q)
                        default=defaultvars();
                        imgY=deconvexp(imgX,imgY,default.tau);
                    case "Diff 1"
                        imgY=diff(imgY);
                        ephysy=diff(ephysy);
                        imgX=imgX(2:end);
                        ephysx=ephysx(2:end);

                    case "Diff 2"
                        imgY=diff(imgY,2);
                        ephysy=diff(ephysy,2);
                        imgX=imgX(2:end);
                        ephysx=ephysx(2:end);
                    case "aaLS Smooth"
                        signal=imgY;
                        defaults=defaultvars();
                        baseline = asLS_smooth(signal,defaults.aals_smoothness,defaults.aals_min_diff) ;
                        imgY=signal-baseline.';
                        baselineindex=imgX>=app.Baseline_Min.Value & imgX<=app.Baseline_Max.Value;
                        baseline_val=mean(imgY(1,baselineindex));
                        imgY=imgY-baseline_val;
                    case "DF/F"

                    case "DF"
                    case "Undo"
                        imgX=app.last_op_imgX;
                        imgY=app.last_op_imgY;
                        ephysx=app.last_op_ephysx;
                        ephysy=app.last_op_ephysy  ;
                    case "Export Graphics"
                        copygraphics(app.Plot_Panel,'BackgroundColor', 'none','Resolution',300);
                    case "SetTLimits"
                        prompt = {'Min Time (s):','Max Time(s):'};
                        dlgtitle = 'Change Time Dimension';
                        dims = 1;
                        definput = {'0','1'};
                        answer = cellfun(@str2double,inputdlg(prompt,dlgtitle,dims,definput));
                        data=app.Datastore_class(app.Data_Selection,1)
                        for file=1:size(data,1)
                            data(file,1).Change_TData("both",answer(1,1),answer(2,1));
                        end
                        return
                end
            elseif Prim_Select==1 & Aux_select==0
                
                switch operation
                    case "CropX/T"
                        app.Crop_Time_DImension
                        return
                    case "CropX/T-Peak"
                        app.crop_from_EP_tidx
                        return
                    case "Copy2Clip"
                        datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Prim_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        [XYTrace]=app.CopyTraces2Clipboard(datax,datay,dataname)
                        %                         [XYTraces]=app.CopyTraces2Clipboard(imgX,imgY)
                    case "Histogram"
                        prompt = {'Number of Bins:','Normalisation (count,pdf,probability):'};
                        dlgtitle = 'Histogram Options';
                        dims = [1 35];
                        definput = {'30','count'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput)
                        [N,edges,bin] = histcounts(imgY,str2double(answer(1,1)),'Normalization',answer{2,1})
                        centres=diff(edges)+edges(1:end-1);
                        centres=centres(:);
                        imgX=centres;
                        imgY=N
                        cftool(imgX,imgY);
                        a=0
                    case "Normalise"
                        max_val=1;baseline=0;
                        y_scaled=imgY-min(imgY);
                        y_scaled=y_scaled/max(y_scaled);
                        imgY=y_scaled*(max_val-baseline)+baseline;
                    case "Filter"
                        imgY=sgolayfilt(imgY,2,app.filterSpinner.Value);
                        imgX=imgX;
                    case "Deconv iGlu"
                        %                         quantal_amp = inputdlg('Enter Quantal Amplitude, or whatever');
                        %                         Q=cell2mat(quantal_amp);
                        %                         [imgX,imgY]=decon_iGluTrace(imgX,imgY,0.02)
                        default=defaultvars();
                        imgY=deconvexp(imgX,imgY,default.tau);
                    case "Diff 1"
                        imgY=diff(imgY);
                        imgX=imgX(2:end);
                    case "Diff 2"
                        imgY=diff(imgY,2);
                        imgX=imgX(2:end);
                    case "aaLS Smooth"
                        signal=imgY;
                        defaults=defaultvars();
                        baseline = asLS_smooth(signal,defaults.aals_smoothness,defaults.aals_min_diff) ;
                        imgY=signal-baseline.';
                        baselineindex=imgX>=app.Baseline_Min.Value & imgX<=app.Baseline_Max.Value;
                        baseline_val=mean(imgY(1,baselineindex));
                        imgY=imgY-baseline_val;
                    case "50Hz"
                        Fs=1/imgX(2)-imgX(1);
                        imgY = notch50Hz(imgY,Fs,50,10); 
                    case "DF/F"

                    case "-Baseline"
                    case 'Undo'
                        imgX=app.last_op_imgX;
                        imgY=app.last_op_imgY;
                    case "Export Graphics"
                        copygraphics(prim,'BackgroundColor', 'none','Resolution',300);
                    case "Maths"
                        spaceList = { '+','-','*','/'};
                        [idx, tf] = listdlg('ListString', spaceList,...
                            'SelectionMode', 'Single', 'PromptString', 'Select Peak AP', 'Initialvalue', 1,'Name', 'Make choice', 'ListSize',[75,75]);
                        value = inputdlg('Enter Value','Value',[1 55]);
                        value=str2double(cell2mat(value));
                        eval(sprintf('imgY=imgY%s%d',spaceList{1,idx},value));
                    case "Traces2Origin"
                        datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Prim_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        [XYTrace]=app.CopyTraces2Clipboard(datax,datay,dataname)
                        MATLABCallOrigin(XYTrace,dataname,'Traces')
                        return
                    case "Mat2Origin"
                        if app.Datastore_class(app.Data_Selection, 1).Subtype=='Raster' & numel(app.Data_Selection)==1
                            if str2double(app.Switch.Value)==1
                                Data=cat(2,app.Datastore_class(app.Data_Selection, 1).XData.',app.Datastore_class(app.Data_Selection, 1).UG.')
                            elseif str2double(app.Switch.Value)==2
                                Data=cat(2,app.Datastore_class(app.Data_Selection, 1).XData.',app.Datastore_class(app.Data_Selection, 1).UR.')
                            end
                            %                          Data=cat(2,XData.',imgDATA.')
                            dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                            MATLABCallOrigin(Data,dataname,'Raster')
                        end
                    case "SetTLimits"
                        app.Datastore_class(app.Data_Selection,1).Change_TData("img");
                end
            elseif Prim_Select==0 & Aux_select==1
                switch operation
                    case "CropX/T"
                        app.Crop_Time_DImension
                        return
                    case "CropX/T-Peak"
                        app.crop_from_EP_tidx
                        return
                    case "Copy2Clip"
                        datax=get(app.Aux_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Aux_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        [XYTrace]=app.CopyTraces2Clipboard(datax,datay,dataname)
                        return
                    case "Normalise"
                        max_val=1;baseline=0;
                        y_scaled=imgY-min(imgY);
                        y_scaled=y_scaled/max(y_scaled);
                        imgY=y_scaled*(max_val-baseline)+baseline;
                    case "Filter"
                        ephysy=sgolayfilt(ephysy,2,app.filterSpinner.Value);
                        ephysx=ephysx;
                    case "Diff 1"
                        ephysy=diff(ephysy);
                        ephysx=ephysx(2:end);
                    case "Diff 2"
                        ephysy=diff(ephysy,2);
                        ephysx=ephysx(2:end);
                    case "50Hz"
                        Fs=1/ephysx(2)-ephysx(1);
                        ephysy = notch50Hz(ephysy,Fs,50,10); 
                    case "aaLS Smooth"
                        signal=ephysy;
                        try
                            defaults=defaultvars();
                            baseline = asLS_smooth(signal,defaults.aals_smoothness,defaults.aals_min_diff) ;
                        catch ME
                            signal=decimate(ephysy,10);
                            ephysx=decimate(ephysx,10);
                            defaults=defaultvars();
                            baseline = asLS_smooth(signal,defaults.aals_smoothness,defaults.aals_min_diff) ;
                        end
                        ephysy=signal-baseline.';
                        baselineindex=ephysx>=app.Baseline_Min.Value & ephysx<=app.Baseline_Max.Value;
                        baseline_val=mean(ephysy(1,baselineindex));
                        ephysy=ephysy-baseline_val;

                    case "DF/F"
                    case "-Baseline"
                        baselineindex=ephysx>=app.Baseline_Min.Value & ephysx<=app.Baseline_Max.Value;
                        baseline_val=mean(ephysy(1,baselineindex));
                        ephysy=ephysy-baseline_val;
                    case "Undo"
                        ephysx=app.last_op_ephysx;
                        ephysy=app.last_op_ephysy ;
                    case "Export Graphics"
                        copygraphics(app.Aux_Chan_Ax,'BackgroundColor', 'none','Resolution',300);
                    case "Maths"
                        spaceList = { '+','-','*','/'};
                        [idx, tf] = listdlg('ListString', spaceList,...
                            'SelectionMode', 'Single', 'PromptString', 'Select Peak AP', 'Initialvalue', 1,'Name', 'Make choice', 'ListSize',[75,75]);
                        value = inputdlg('Enter Value','Value',[1 55]);
                        value=str2double(cell2mat(value));
                        eval(sprintf('ephysy=ephysy%s%d',spaceList{1,idx},value));
                    case "Traces2Origin"

                        datax=get(app.Aux_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Aux_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        [XYTrace]=app.CopyTraces2Clipboard(datax,datay,dataname)
                        MATLABCallOrigin(XYTrace,dataname,'Traces')
                        return
                     case "Mat2Origin"
                        if app.Datastore_class(app.Data_Selection, 1).Subtype=='Raster' & numel(app.Data_Selection)==1
                            Data=cat(2,app.Datastore_class(app.Data_Selection, 1).eXData.',app.Datastore_class(app.Data_Selection, 1).Aux1.')
                        end
                            %                          Data=cat(2,XData.',imgDATA.')
                            dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                            MATLABCallOrigin(Data,dataname,'Raster')
                        
                    case "SetTLimits"
                        app.Datastore_class(app.Data_Selection,1).Change_TData("ephys");

                end
            elseif Prim_Select==0 & Aux_select==0;
                switch operation
                    case "SetTLimits"
                        prompt = {'Min Time (s):','Max Time(s):'};
                        dlgtitle = 'Change Time Dimension';
                        dims = 1;
                        definput = {'0','1'};
                        answer = cellfun(@str2double,inputdlg(prompt,dlgtitle,dims,definput));
                        data=app.Datastore_class(app.Data_Selection,1)
                        for file=1:size(data,1)
                            data(file,1).Change_TData("both",answer(1,1),answer(2,1));
                        end
                        return

                    case "CropX/T"
                        app.Crop_Time_DImension
                        return
                    case "CropX/T-Peak"
                        app.crop_from_EP_tidx
                        return
                    case "hist_Gramm"
                        figure
                        datax=get(prim.Children,'XData');% get xdata
                        datay=get(prim.Children,'YData');% get ydata
                        dataname=get(prim.Children,'DisplayName');datax=get(prim.Children,'XData');% get xdata
                        if iscell(datax)==1
                            g=gramm(x=datay,color=dataname)
                        else
                            g=gramm(x=datay)
                        end
                        g.set_names('x','Time(s)','y','au');
                        g.stat_bin
                        g.draw
                        assignin('base','hist_Gramm',g);
                    case "plot_Gramm"
                        figure
                        datax=get(app.Prim_Chan_Ax.Children,'XData');% get xdata
                        datay=get(app.Prim_Chan_Ax.Children,'YData');% get ydata
                        dataname=get(app.Prim_Chan_Ax.Children,'DisplayName');
                        if iscell(datax)==1
                            g=gramm(x=datax,y=datay,color=dataname)
                        else
                            g=gramm(x=datax,y=datay)
                        end
                        g.set_names('x','Time(s)','y','au');
                        g.geom_line
                        g.draw
                        assignin('base','plot_Gramm',g);
                end
            end
            
        end