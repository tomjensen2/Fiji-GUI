 %% Bins data by pixel number in 1-3 dimensions
        function obj=BinData2(obj,x_y_z,num)
            datanames=["UG","UR","ScX","ScY","predScX","predScY","TiR"];
                for i1=1:7
                    %bin data by mean in X dimension
                    tempimg=double(obj.(datanames(i1)));
                    try
                        if x_y_z==2
                            data2bin=tempimg;
                            bin_dimension=2;
                            elements_2_bin=num;
                            elements=1:1:size(data2bin,bin_dimension);
                            [a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
                            colDist = [repelem(elements_2_bin, floor(size(data2bin,bin_dimension)/elements_2_bin)) rem(size(data2bin,bin_dimension),elements_2_bin)];
                            % probably need to permute here
                            binned_data_as_cell=mat2cell(data2bin,size(data2bin,1),a);
                            mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({bin_dimension},1,size(a,bin_dimension)),'UniformOutput',0);
                            % and then permute again
                            binned_data=cell2mat(mean_of_binned_cells);
                            obj.(datanames(1,i1))=binned_data;
                        elseif x_y_z==1
                            %bin data by mean in Y dimension
                            data2bin=tempimg;
                            bin_dimension=1;
                            elements_2_bin=num;
                            elements=1:1:size(data2bin,bin_dimension);
                            [a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
                            colDist = [repelem(elements_2_bin, floor(size(data2bin,bin_dimension)/elements_2_bin)) rem(size(data2bin,bin_dimension),elements_2_bin)];
                            % probably need to permute here
                            binned_data_as_cell=mat2cell(data2bin,a,size(data2bin,2));
                            mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({bin_dimension},numel(a),1),'UniformOutput',0);
                            binned_data=cell2mat(mean_of_binned_cells);
                            obj.(datanames(1,i1))=binned_data;
                        elseif  x_y_z==3
                            data2bin=tempimg;
                            bin_dimension=3;
                            elements_2_bin=num;
                            if elements_2_bin>size(data2bin,bin_dimension);
                                elements_2_bin=size(data2bin,bin_dimension);
                            end
                            elements=1:1:size(data2bin,bin_dimension);
                            [a,~,~]=histcounts(elements,'NumBins',round(size(elements,2)/elements_2_bin));
                           
%                             colDist = [repelem(elements_2_bin, floor(size(data2bin,bin_dimension)/elements_2_bin)) rem(size(data2bin,bin_dimension),elements_2_bin)];
                            if ndims(tempimg)==4
                            obj.(datanames(1,i1))=nanmean(data2bin,4);
                            else

                            binned_data_as_cell=mat2cell(data2bin,size(data2bin,1),size(data2bin,2),a,size(data2bin,4));
                            binned_data_as_cell=permute(binned_data_as_cell,[1,3,2]);
                            mean_of_binned_cells=cellfun(@nanmean,binned_data_as_cell,repmat({bin_dimension},1,numel(a)),'UniformOutput',0);
                            mean_of_binned_cells=permute(mean_of_binned_cells,[1,3,2]);
                            testdata=cell2mat(mean_of_binned_cells);
                            obj.(datanames(1,i1))=binned_data;    
                            end
                        end
                        end
                           end
                        a=[];
                        b=[];
                        c=[];
                        tempimg=[];
                        testdata=[];
                        xvals=[];
                        binned_data=[]
                        elements=[]
                   
                
                switch bin_dimension
                    case 1
                        obj.y_pixel_size=obj.y_pixel_size*elements_2_bin;
                        obj.y_pixel_num=size(obj.UG,bin_dimension);
                        obj.YData=linspace(0*obj.y_pixel_size,obj.y_pixel_size*obj.y_pixel_size,obj.y_pixel_num);
                        obj.comment=sprintf('Bin| Y | %d | %s |',num,obj.comment);
                        if obj.TimeDim==2 %case of line-scan data
                            obj.scanline.roi=[];
                            obj.scanline.roi(1,1)=1;
                            obj.scanline.roi(2,1)=obj.y_pixel_num;

                        end

                    case 2
                        obj.x_pixel_size=obj.x_pixel_size*elements_2_bin;
                        obj.x_pixel_num=size(obj.UG,bin_dimension);
                        obj.XData=linspace(0*obj.x_pixel_size,obj.x_pixel_size*obj.x_pixel_size,obj.x_pixel_num);

                        if obj.TimeDim==2 %case of line-scan data
                            obj.linetime=obj.linetime*elements_2_bin;
                            obj.TData=linspace(0,max(obj.TData),size(obj.UG,bin_dimension));
                            obj.XData=obj.TData;
                            obj.comment=sprintf('Bin| T | %d | %s |',num,obj.comment);
                        end
                        if isempty(obj.TimeDim)==1;obj.comment=sprintf('Bin| X | %d | %s |',elements_2_bin,obj.comment);end
                    case 3
                        if obj.Type=='XY' %case of Z-Stack
                            obj.z_pixel_size=obj.z_pixel_size*elements_2_bin;
                            obj.z_pixel_num=size(obj.UG,bin_dimension);
                            obj.ZData=linspace(0*obj.z_pixel_size,obj.z_pixel_size*obj.z_pixel_size,obj.z_pixel_num);
                            obj.comment=sprintf('Bin| Z | %d | %s |',num,obj.comment);
                        elseif obj.Type=='FF' %case of Frame Scan
                            if obj.Subtype=="FF4D"
                                obj.Subtype='Single'
                                obj.TData=linspace(0,max(obj.TData,[],'all'),size(obj.UG,3));
                                obj.comment=sprintf('Bin| C | %d | %s |',obj.linetime*num,obj.comment);
                                obj.z_pixel_num=size(obj.UG,bin_dimension);
                            else
                            obj.linetime=obj.linetime*num;
%                             obj.XData=linspace(0*obj.linetime,size(obj.UG,bin_dimension)*obj.linetime,size(obj.UG,bin_dimension));
                            obj.TData=obj.XData;
                            obj.comment=sprintf('Bin| T | %d | %s |',obj.linetime*num,obj.comment);
                            obj.z_pixel_num=size(obj.UG,bin_dimension);
                            end
                        end

                end
            end
      