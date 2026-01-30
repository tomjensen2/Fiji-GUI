function objout = deepintout(obj, modelPath)
% deepintout: CNN-based denoising that supports tall inputs by chunking
%
% Splits obj.UG into height=269 pieces, pads if needed, processes each
% chunk with the same CNN sliding-window model, and reassembles output.

    model = load(modelPath);
    net = model.net;
    data = obj.UG;
    [H, W] = size(data);

    targetHeight = 269;
    numChunks = ceil(H / targetHeight);
    outputParts = cell(1, numChunks);

    for ci = 1:numChunks
        % --- Extract chunk ---
        startIdx = (ci-1)*targetHeight + 1;
        endIdx   = min(ci*targetHeight, H);
        chunk    = data(startIdx:endIdx, :);

        % --- Pad if shorter than 269 ---
        padAmount = 0;
        if size(chunk,1) < targetHeight
            padAmount = targetHeight - size(chunk,1);
            chunk = [chunk; zeros(padAmount, W, 'like', data)];
        end

        % --- Prepare for CNN ---
        test = chunk;
        test2 = permute(test,[1,3,2]);
        imglen = size(test2,3);

        % --- Sliding-window predict ---
        startFrame = 30;
        finFrame = imglen - 30;
        denoisedData = zeros(size(test2),'like',test2);

        for i = (startFrame+1):finFrame
            % predict() expects 269×1×18 input here
            denoisedData(:,1,i) = predict(net, test2(:,1,(i-9):(i+8)));
        end

        denoisedDataLS = squeeze(denoisedData);
        chunkOut = denoisedDataLS(1:size(chunk,1), :);

        % --- Remove padding for last chunk ---
        if padAmount > 0
            chunkOut = chunkOut(1:end-padAmount, :);
        end

        outputParts{ci} = chunkOut;
    end

    % --- Reassemble all parts ---
    deepintAll = cat(1, outputParts{:});

    % --- Store back into object ---
    objout = obj;
    objout.UG = deepintAll;
end




% %test=MIJ.getCurrentImage;
% function objout = deepintout(obj,model)
%     data = obj.UG; % Assuming obj has a method to retrieve data
%     test=zeros(269,size(data,2));
%     test(1:size(data,1),:)=data;
%     test2=permute(test,[1,3,2]);
%     imglen=size(test2,3);
%     start=30;
%     fin=imglen-30;
%     denoisedData=zeros(size(test2));
%     model=load(model);
%     for i=31:fin
%         denoisedData(:,1,i)=predict(model.net,test2(:,1,[i-9:i+8]));
%     end
%     denoisedDataLS=squeeze(denoisedData);
%     deepint1=denoisedDataLS(1:size(data,1),:);
%     objout=obj;
%     objout.UG=deepint1;
% end