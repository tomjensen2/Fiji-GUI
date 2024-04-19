function b = Old_ImData_2_New(a)
c=repmat(ImData,size(a,1),1)
for i=1:size(a,1)
b(i,1) = eval(class(c(i,1)));  %create default object of the same class as a. one valid use of eval
   for p =  properties(c(i,1)).'  %copy all fields properties
      try   %may fail if property is read-only
         eval(sprintf('b(i,1).%s = a(i).%s',cell2mat(p),cell2mat(p)));
      catch
%          warning('failed to copy property: %s', {p});
      end
   end
   end
end