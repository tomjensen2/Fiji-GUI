function b = ImData_2_Struct(a)
props=properties(a);
for i=1:size(props,1)
b.(props{i,1})=a.(props{i,1});
end
end