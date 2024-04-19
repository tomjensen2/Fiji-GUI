           Alldata_responses=table2export
           Alldata_responses4XL=app.Data_Display(:,[1:7,9:15,18:19,21:24,37:39,46,48:52])
           Alldata_responses_struct=table2struct(Alldata_responses);
           app.Index_Struct.AllsucInd=app.Data_Display.Success== 1;

            dx0all=table2array(app.Data_Display(logical(app.Index_Struct.AllsucInd),'dX0'));
            dy0all=table2array(app.Data_Display(logical(app.Index_Struct.AllsucInd),'dY0'));
            app.Index_Struct.AllsucInd=app.Data_Display.Success== 1;
            allsucstab=app.Data_Display(app.Index_Struct.AllsucInd,:)
                  try
            %remove outliers by 95% CI of Density plots
             [app.KSDensityHandle,app.PointsHandle,L2R_outside]=kscontour2(cat(2,dx0all,dy0all),'Color','orange','ShowPoints',true,'Handle',app.DataAx1,'PrcHi',90)
            L2R_outside(:,1)==true
            Outliers90=L2R_outside(:,1)
            %remove outliers
            answer = inputdlg('Remove Outliers y/n:','y');
            if answer{:}=='y'
            index=1:1:size(app.Data_Display,1)
            index2=index(app.Index_Struct.AllsucInd)
            index3=index2(~Outliers90)
%             index~=index3
%             finalidx=bsxfun(@and,ans(:,1),ans(:,2))
            
            app.Data_Display=app.Data_Display(~ismember(index,index3),:)
            
            else
            end
            catch ME
             app.TextArea.Value=ME.message;    
            end
            
            
            if calcium==1
            allsucstab2=allsucstab(:,[1:7,9:14,18:19,21:24,37:46,end-2:end-1])
            answer = questdlg('Export to Excel?','Response Data Export','Yes','No','Yes')
            
            if answer=="Yes"   
            worksheet=inputdlg('File Name','File name');
            worksheet=worksheet{:};
            path='C:\Users\tpkje\Documents\MATLAB\';
            extension='.xlsm';
            filename=sprintf('%s%s%s',path,worksheet,extension);
            writetable(allsucstab2,filename,"WriteMode","overwritesheet");
            writetable(responsestable,filename,"Sheet",'All Responses');
            writetable(Alldata_responses4XL,filename,"Sheet",'All Localisations');
            matfilename=sprintf('%s%s%s',path,worksheet,'.mat');
            exportdata=app.Data_Display;
            save(matfilename,'allsucstab2','Alldata_responses','Alldata_responses_struct');
            end
            
            elseif calcium==0
                
            allsucstab2=allsucstab(:,[1:7,9:14,18:19,21:24])
            answer = questdlg('Export to Excel?','Response Data Export','Yes','No','Yes')
            
            if answer=="Yes"   
            worksheet=inputdlg('File Name','File name')
            worksheet=worksheet{:} 
            path='C:\Users\tpkje\Documents\MATLAB\'
            extension='.xlsm'
            filename=sprintf('%s%s%s',path,worksheet,extension)
            writetable(allsucstab2,filename,"WriteMode","overwritesheet")
            writetable(responsestable,filename,"Sheet",'All Responses');
            writetable(Alldata_responses4XL,filename,"Sheet",'All Localisations');
            exportdata=app.Data_Display;
            matfilename=sprintf('%s%s%s',path,worksheet,'.mat');
            save(matfilename,'allsucstab2','Alldata_responses','Alldata_responses_struct');
            end
            end
                suc_fail=squeeze(app.AllTables([3:6],21,:));
                suc_fail=cell2mat(transpose(suc_fail));
                suc_amp=squeeze(app.AllTables([3:6],22,:));
                suc_amp=cell2mat(transpose(suc_amp));
                suc_Calamp=squeeze(app.AllTables([3:6],24,:));
                suc_Calamp=cell2mat(transpose(suc_Calamp));

                suc_fail_cell=num2cell(suc_fail);
                suc_amp_cell=num2cell(suc_amp);
                suc_Calamp_cell=num2cell(suc_Calamp);
                space=repmat({' '},size(suc_amp,1),1);
                trialnum=num2cell(1:1:size(suc_amp,1));
                cell4table=cat(2,trialnum.',suc_fail_cell,space,suc_amp_cell,space,suc_Calamp_cell);
                aps={'Trial','AP1','AP2','AP3','AP4','|-','iGluAP1','iGluAP2','iGluAP3','iGluAP4','-|','CalAP1','CalAP2','CalAP3','CalAP4',};
                responsestable=cell2table(cell4table);
                responsestable.Properties.VariableNames=aps;
                writetable(responsestable,cat(2,folder,file),'Sheet',worksheet{:},'Range','AN8');