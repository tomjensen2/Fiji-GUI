function fancyClipboard(myCell)
  if ~iscell(myCell), error('Input must be a cell'); end
  if ndims(myCell) > 2, error('Only 1D & 2D cells supported.'); end

  str = [];
  newline = sprintf('\n');
  for i = 1:size(myCell, 1); 
    row = sprintf('%s\t', myCell{i,:});
    row(end) = newline;
    str = [str row]; %#ok<AGROW>
  end
  clipboard('copy',str);
end