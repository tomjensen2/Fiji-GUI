function IJsave2tif(Data,path,Channel)
if Data.Type=="XY"
    img2save=Data.(Channel);
    img=copytoImagePlus(img2save,'XYZCT');
    cal=img.getCalibration()
    cal.pixelWidth=Data.x_pixel_size;
    cal.pixelHeight=Data.y_pixel_size;
    cal.pixelDepth=Data.ZData(2)-Data.ZData(1);
    img.setCalibration(cal);
    img.show();
    eval(sprintf("MIJ.run('Tiff...','path=%s%s_%s.tif');",path,matlab.lang.makeValidName(Data.comment),Channel));
    img.close();
elseif Data.Type=="Line2"
    img2save=Data.(Channel);
    img=copytoImagePlus(img2save,'YXZCT');
    cal=img.getCalibration()
    cal.pixelWidth=Data.TData(2)-Data.TData(1);
    cal.pixelHeight=Data.YData(2)-Data.YData(1);
    cal.pixelDepth=1;
    img.setCalibration(cal);
    img.show();
    eval(sprintf("MIJ.run('Tiff...','path=%s%s_%s.tif');",path,matlab.lang.makeValidName(Data.comment),Channel));
    img.close();
elseif Data.Type=="FF"   
    img2save=Data.(Channel);
    img=copytoImagePlus(img2save,'XYTCX');
    cal=img.getCalibration()
    cal.pixelWidth=Data.XData(2)-Data.XData(1);
    cal.pixelHeight=Data.YData(2)-Data.YData(1);
    cal.pixelDepth=1;
    cal.frameInterval=Data.linetime;
    img.setCalibration(cal);
    img.show();
    eval(sprintf("MIJ.run('Tiff...','path=%s%s_%s.tif');",path,matlab.lang.makeValidName(Data.comment),Channel));
    img.close();
end

end