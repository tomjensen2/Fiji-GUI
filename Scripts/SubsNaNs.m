function replaced=SubsNaNs(matrixwithNaNs)
            try
            %get rid of NaN's and replace with nearest good value
            nanLocations = isnan(matrixwithNaNs);
            nanLinearIndexes = find(nanLocations)
            nonNanLinearIndexes = setdiff(1:numel(matrixwithNaNs), nanLinearIndexes);
            % Get the x,y,z of all other locations that are non nan.
            [xGood, yGood] = ind2sub(size(matrixwithNaNs), nonNanLinearIndexes);
            for index = 1 : length(nanLinearIndexes);
                thisLinearIndex = nanLinearIndexes(index);
                % Get the x,y location
                [x,y] = ind2sub(size(matrixwithNaNs), thisLinearIndex);
                % Get distances of this location to all the other locations
                distances = sqrt((x-xGood).^2 + (y - yGood) .^ 2);
                [sortedDistances, sortedIndexes] = sort(distances, 'ascend');
                % The closest non-nan value will be located at index sortedIndexes(1)
                indexOfClosest = sortedIndexes(1);
                % Get the u value there.
                goodValue = matrixwithNaNs(xGood(indexOfClosest), yGood(indexOfClosest));
                % Replace the bad nan value in u with the good value.
                matrixwithNaNs(x,y) = goodValue;
             end
            catch
                assignin('base','error','error when replacing NaNs');
            end
          replaced=matrixwithNaNs; 
end