% convert a matrix to a text string and copy it to the system clipboard in
% the format Microsoft Excel expects it
%
% based on num2clip by Grigor Browning
%
function as = mat2clipXLS(data, titles, magic)
    as = num2str(data); 
    as(:, end + 1) = char(10); % and a line feed to all lines
    as = reshape(as', 1, prod(size(as))); % make linear
    ass = [' ', as];
    as = [as, ' '];
    as = as((double(as) ~= 32 | double(ass) ~= 32) & ~(double(ass == 10) & double(as == 32)));
    as(double(as) == 32) = char(9); % replace remaining spaces with TAB
    fs = strrep(as, num2str(magic), '-'); % remove unwanted data
    if(~isempty(titles))
        titles(:, end + 1) = char(9);
        titles = reshape(titles', 1, prod(size(titles)));
        titles = titles(1:(end - 1));
        titles = titles(find(titles ~= 32));
        titles = [titles 10];
    end
    clipboard('copy', [titles fs]);