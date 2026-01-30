function b = copyobj2(a)
for i=1:size(a,1)
b(i,1) = eval(class(a(i,1)));  %create default object of the same class as a. one valid use of eval
   for p =  properties(a(i,1)).'  %copy all public properties
      try   %may fail if property is read-only
         eval(sprintf('b(i,1).%s = a(i,1).%s',cell2mat(p),cell2mat(p)));
      catch
         warning('failed to copy property: %s', p);
      end
   end
   end
end