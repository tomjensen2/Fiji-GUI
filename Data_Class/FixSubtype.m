function obj = FixSubtype(obj)
%%Fixes any issues with old ImData's having invalid Subtype properties
%%
%%
subtypes=["Raster","Scatter","Single","FF4D"];%define valid Subtypes
%Check if Subtype is a character vector
if ~ischar(obj.Subtype)
 obj.Subtype='Single';
 return
end
if sum(obj.Subtype==subtypes,2)==0; %compare Subtype propertie to valid list
obj.Subtype='Single';
end

end