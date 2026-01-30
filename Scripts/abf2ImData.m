function data = abf2ImData(filename)
    [ephysdata,a,ephysmetadata] = abfload(filename);
    T_in_secs=ephysmetadata.si/1e6
    TData=linspace(0,ephysmetadata.sweepLengthInPts*T_in_secs,ephysmetadata.sweepLengthInPts)
    % fill Channel listbox items
    
    for i=1:size(ephysdata,3);
        data(i,1)=ImData;
        data(i,1).Type='Line1';
        data(i,1).file='Line1';
        data(i,1).comment=sprintf('Sweep %d',i);
        data(i,1).XData=TData;
        data(i,1).eXData=TData;
        data(i,1).TData=TData;
       
        for channels =1:ephysmetadata.nADCNumChannels
            if channels==1
                %data(i,1).UG=repmat(ephysdata(:,channels,i).',2,1);
                data(i,1).UG=ephysdata(:,channels,i).';
                data(i,1).(sprintf('Aux%d',channels))=ephysdata(:,channels,i).';
            elseif channels==2
                %data(i,1).UR=repmat(ephysdata(:,channels,i).',2,1);
                data(i,1).UR=ephysdata(:,channels,i).';
                data(i,1).(sprintf('Aux%d',channels))=ephysdata(:,channels,i).';
            elseif channels<=4
                data(i,1).(sprintf('Aux%d',channels))=ephysdata(:,channels,i).';
            
                
            end
    end


end
    
