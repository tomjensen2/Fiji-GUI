# Fiji-GUI.

- **Highlights**
    - Opens Femtonics .mes and .mesc files, preserving metadata on equipment states
    - Opens any imaging file type ImageJ can handle and enables combination with other data types such as patch clamp electrophysiology, FLIM and reference between data types
    - Enable easy one-click access to ImageJ functions aided by metadata from the image loaded
    - Easy extraction of statistics from the imaging data, peaks timings and statistics can be found semi-automatically or manually for multiple channels without having to reduce the dimensions of the data.
    - Ideal for working with episodic imaging data or from unstructured imaging data  that fromv such as spontaneous responses or epileptiform activity.

Fiji-GUI is a MATLAB based neuroscience oriented data analysis program for integrated live cell imaging/electrophysiology data.  It is largely focused on time series (XT/XYT) image processing in the context of additional recording modalities such as patch clamp or field electrophysiology, but can also make some multi-purpose tasks carried out in ImageJ considerably more simple.

FIJI-GUI is designed around use opening Femtonics .mes and .mesc files but can effectively be used for any image file type supported be Fiji/ImageJ.  Specific routines are also present for managing Olympus .oib files and all imaging formats can be really combined with electrophysiology data from axon .abf or WinWCP .wcp files.

It works both as a quick button press interface for ImageJ functions buried within its menus and also for storing and running commonly used ImageJ macros.  It will carry out common normalisations on time series imaging data (DF, DF/F0, DF/R) as a one click process independent of the dimensions of the data.  Once combined with electophysiology data, MATLABs peakfinding algorthims can be used via the GUI to identify events occuring in either electrophysiology or imaging data.  Using these data the raw images can then be cropped without the need to manually identify the matching frame or pixel locations.    

In large part this is a wrapper for many inbuilt MATLAB functions and a number of 3rd party functions.  Extensive use is made of the following libraries for image input and output tasks and FIMAs for certain processing tasks.

**MIJ** by Daniel Sage et.al. [https://uk.mathworks.com/matlabcentral/fileexchange/47545-mij-running-imagej-and-fiji-within-matlab](https://uk.mathworks.com/matlabcentral/fileexchange/47545-mij-running-imagej-and-fiji-within-matlab)

**CopytoImagePlus** by Kouichi C. Nakamura [https://uk.mathworks.com/matlabcentral/fileexchange/67409-kouichi-c-nakamura-copytoimageplus](https://uk.mathworks.com/matlabcentral/fileexchange/67409-kouichi-c-nakamura-copytoimageplus)

**FIMAS** by Kaiyu Zheng

[https://github.com/zhengkaiyu/FIMAS](https://github.com/zhengkaiyu/FIMAS)

**abfload** by Harald Hentschke

[https://github.com/fcollman/abfload](https://github.com/fcollman/abfload)

And many others….

[Installation](Fiji-GUI%2051a1180ce9b84133a84f9ee13452ecd6/Installation%205181e556a21e43a5ba79dfcc7f4a69de.md)

[The Interface](Fiji-GUI%2051a1180ce9b84133a84f9ee13452ecd6/The%20Interface%2063f572a2e7f041f485c81f94f5d9e22e.md)

[Data Import, Combination and Storage](Fiji-GUI%2051a1180ce9b84133a84f9ee13452ecd6/Data%20Import,%20Combination%20and%20Storage%202d4f884178ea43518ca8ceac2fa16cbd.md)

[Data Manipulation/Combination](Fiji-GUI%2051a1180ce9b84133a84f9ee13452ecd6/Data%20Manipulation%20Combination%204871d60e252642a18c357164950e5909.md)

[Data extraction](Fiji-GUI%2051a1180ce9b84133a84f9ee13452ecd6/Data%20extraction%20991e946848be42e592bcfd419197732a.md)

[Data Processing](Fiji-GUI%2051a1180ce9b84133a84f9ee13452ecd6/Data%20Processing%2053cd529b95b04c849639442d1ae2dc53.md)

[The ImData Class](Fiji-GUI%2051a1180ce9b84133a84f9ee13452ecd6/The%20ImData%20Class%2090a7263f2cd54511adccbc54ab05c8d7.md)

[Data Output](Fiji-GUI%2051a1180ce9b84133a84f9ee13452ecd6/Data%20Output%20577457650144400b9b284e95f4e34f57.md)

[Plans for addition](Fiji-GUI%2051a1180ce9b84133a84f9ee13452ecd6/Plans%20for%20addition%20fe493e338fd44e19b389848da83b68c6.md)

**The Problem**

Data analysis in modern cellular neuroscience studies is becoming increasing complex as improvements in both microscopy systems and synthetic/genetically encoded probes continue to resolve cellular processes at finer scales and higher temporal resolution.  

In the multiplexed imaging experiments I carry out I have found myself analysing or re-analysing >100 recordings, with each trial consisting of multiple functionally distinct cellular compartments to separately analyse.  Each of these may then have multiple spectrally distinct channels of data as well as accompanying electrophysiology data which must be compared.  There may be tens of trials for each, and different conditions to separately analyse and compare.  There may also be further division based on analysis of spatial components of the data, or additional channels based of fluorescence lifetime imaging data or timings of photo-stimulation shutters opening.

This can mean weeks spent going through 100’s of files, with different formats and programs for analysis, this can generate a mass of folders often linked by paper notes/text files.   Fiji-GUI works to reduce some of this by consolidating imaging data and electrophysiology data within a MATLAB class structure and providing a GUI leveraging UI elements from both Matlab and ImageJ through the MIJ plugin.