function  [xvals,yvals] = continous_vec(mes_array)
% Assuming 'times' is the first row of your array and 'states' is the second row.
times = mes_array(2,:); % Example data from the image
states = mes_array(1,:); % Corresponding states

% Initialize the continuous time vector
end_time = times(end); % Get the last time to know the duration
time_resolution = 0.5; % Time resolution in ms
continuous_time_vector = zeros(1, end_time / time_resolution + 1);

% Fill in the continuous time vector with the states
for i = 1:length(times)
    % Convert the time to an index in the continuous time vector
    index = times(i) / time_resolution + 1;
    
    % Determine the voltage value based on the state
    voltage = states(i) * 5; % 5V for state 1, 0V for state 0
    
    % If it's the last time point, fill to the end of the vector
    if i == length(times)
        continuous_time_vector(index:end) = voltage;
    else
        % Otherwise, fill until the next time point
        next_index = times(i + 1) / time_resolution + 1;
        continuous_time_vector(index:next_index - 1) = voltage;
    end
end

% The continuous_time_vector now contains the signal
yvals=continuous_time_vector;
xvals=linspace(times(1),times(end),size(continuous_time_vector,2));
end