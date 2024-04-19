function z_scores = custom_zscore(vector,time_vector,startidx,endidx)
vector=double(vector);
% Find the sample from the matrix using the logical index
logical_index= time_vector >= startidx & time_vector <= endidx;
sample = vector(logical_index);

% Calculate the sample mean and standard deviation
sample_mean = mean(sample);
sample_std = std(sample);

% Compute z-scores
z_scores = (vector - sample_mean) ./ sample_std;

end