# The ImData Class

## Imaging measurement data Properties

The base of the imaging data storage for Fiji-GUI is the ImData class structure, which holds the raw data in multiple channels as properties .UG, .UR, .TiR, .ScX, .ScY representing the Green, Red, Transmitted Light, Scanner X and Scanner Y co-ordinates.  

The context of the imaging data is represented by properties that store the expected dimensions of the data.  Vectors containing the scale of each dimension are stored as the properties .X,.Y,.Z,.T,.tauData, and the numeric reference dimension .X,.Y,.Z,.T,.tauDim.  

For instance a 2D Linescan has the 1st vertical dimension (Y axis) and 2nd horizontal dimension (Time) so TDim=2 and YDim=1.  A 3D frame scan has the 1st vertical dimension (Y axis), 2nd horizontal dimension (X axis) and 3rd Time dimension so TDim=3, YDim=1, XDim=2.  

Additional contextual properties are .x_pixel_num, .y_pixel_num, .x_pixel_size, .y_pixel_size, .linetime, these are carried over from Femtonics data and represent the image size and pixel sizes.

### Background Imaging data Properties

A secondary series of image files are also present. These ‘background’ images are raster scans recorded immediately prior the initiation of a time series acquisition and show the wider field image the scan was targeted at. These data are stored in the properties .bkgUG, .bkgUR and .bkgTiR.  The properties .bkgXData and .bkgYData store the scale, .bkgx_pixel_size, .bkgy_pixel_size, .bkgy_size and .bkgx_size store the pixel and image size.

## Data Types and Subtypes

ImData types are derived from the properties .Type, .file and .Subtype, these properties provide information on how the data should be evaluated during operations.

**Line1**: a 1D vector, intensity vs time or other unit

**Line2**: a 2D matrix with 2nd dimension representing time

- Subtype ‘Single’: the data represent a single continuous measurement. Y axis in most cases represents distance or pixel number.
- Subtype ‘Raster’:  A combination of multiple Line1 trials of the same measurement series.
- Subtype ‘FLIM t/T’ : Lifetime imaging data reduced to the first tau dimension vs Time 2nd dimension

**FF**: ‘FoldedFrame’ A 3D (or 4D) matrix representing frame scan recordings

- Subtype ‘Single’: the data represent a single continuous measurement. X and Y axis represents distance and Time is the 3rd dimension
- Subtype ‘FF4D’: These are XYTZ frame scans recorded when using the motorised microscope objective positioner

**XY:** These are morphology images, either single XY frame scans or Z Stacks.

Note: Time is always represented in data a whole seconds, although some UI elements use milliseconds for ease of thought.

*Future: the naming is a relic of the Femtonics .mes file naming conventions.  They may change to be more simple.*  

## Scanline, ScX/Y, predScX/Y, rois

These properties are derived from the Femtonics MES data structure.  The Scanline properties contain the information directing galvo scanners of the microscope for multiple patterns.  These are the command, or predicted locations at any time during a linescan or framescans.

The properties ScX/Y and predScX/Y are similar in that they describe scanner co-ordinates for every timepoint recorded in the image data properties (UG,UR,TiR etc.).  predScX/Y are derived from the scanline data, and are thus are the command scanner locations, ScX/Y are derived from the feedback signals from the Femtonics scanners during the measurement.

The ImData.Scanline.roi data represents the extents of the linescan regions of interest set when scanning in MES.  They are represented by a matrix containing in column 1 the line indices for the whole image, column 2 onward then contain the line indices for each ROI.  So for instance a linescan with 2 rois and 714 points may be represented as (1;714,1;306,307;714).  

**Femtonics ROIs in multi-spiral scans**

Although the scanline data described above is generally accurate; in multi-line and multi-spiral scans there are often portions of the regions that are NOT part of the ROIs but are flyback, or areas where the scanner moves between lines.  

This can be very problematic if processing steps such as the Spiral2Img/Pos2Img are to be used as they will include data that shouldn’t be present, or if the linescans have few pixels these data may be significant enough the dilute the recording from the ROI.

We expect that such regions in linescans may be present in data recorded on microscopes from other manufacturer's that don’t show the internal workings of the scope in their output.

**Limitations** 

Currently ROI storage are only supported in linescans, this is largely due to the complicated nature of ROI storage in .mes files.  

## Aux1, Aux2, eXData (Aux1XData….)

These channels are secondary non-imaging data that are recorded during the imaging experiment.  These may be:

Most likely patch clamp or field electrophysiology recordings, stimulation protocols such as TTL outputs onto uncaging lasers, temperature outputs from tissue baths.

Currently I use these for electrophysiology recordings: for example

Aux1 and 2 are the primary outputs of the first and second headstages on the ephys rig I use.  The sampling rate is much higher so a second variable for the time scale is required.  

This is eXData, and represents the scale of channels Aux1 and 2.  For flexibility and different use cases there are further variables present that haven’t been implemented.  Aux1XData, Aux2XData…:

These are in case there is need for multiple Auxiliary channels with different scales.  Much editing of code will be required to implement this correctly.