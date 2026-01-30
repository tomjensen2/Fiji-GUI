function bool=testCellsize(C)
if length(C) == 1
  bool=1;
  return
end
for i=2:length(C)
  if ~isequal(size(C{1,1}),size(C{i,1}))
    bool=0;
    return 
  end
end
bool=1