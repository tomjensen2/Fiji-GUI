# Fiji-GUI.

FIJI-GUI is a user-friendly, MATLAB based Neuroscience oriented data analysis platform for multiplexed imaging/electrophysiology data processing.

**The Problem**

Data analysis in modern cellular neuroscience studies is becoming increasing complex as improvements in both microscopy systems and synthetic/genetically encoded probes continue to resolve cellular processes at finer scales and higher temporal resolution.  

In the multiplexed imaging experiments I carry out I have found myself analysing or re-analysing >100 recordings, with each trial consisting of multiple functionally distinct cellular compartments to separately analyse.  Each of these may then have multiple spectrally distinct channels of data as well as accompanying electrophysiology data which must be compared.  There may be tens of trials for each, and different conditions to separately analyse and compare.  There may also be further division based on analysis of spatial components of the data, or additional channels based of fluorescence lifetime imaging data or timings of photo-stimulation shutters opening.

This can mean weeks spent going through 100’s of files, with different formats and programs for analysis, this can generate a mass of folders often linked by paper notes/text files.   Fiji-GUI works to reduce some of this by consolidating the imaging data with electrophysiology data within a MATLAB class structure and providing a GUI leveraging UI elements from both Matlab and ImageJ through the MIJ plugin.  

In large part this is a wrapper for many inbuilt MATLAB functions and a number of 3rd party functions.  Extensive use is made of the following libraries

**MIJ** by Daniel Sage et.al. [https://uk.mathworks.com/matlabcentral/fileexchange/47545-mij-running-imagej-and-fiji-within-matlab](https://uk.mathworks.com/matlabcentral/fileexchange/47545-mij-running-imagej-and-fiji-within-matlab)

**CopytoImagePlus** by Kouichi C. Nakamura [https://uk.mathworks.com/matlabcentral/fileexchange/67409-kouichi-c-nakamura-copytoimageplus](https://uk.mathworks.com/matlabcentral/fileexchange/67409-kouichi-c-nakamura-copytoimageplus)

[Installation](https://www.notion.so/Installation-f2a801af57574ccc94d0ea2113cec348?pvs=21)

[The Interface](https://www.notion.so/The-Interface-63f572a2e7f041f485c81f94f5d9e22e?pvs=21)

[The ImData Class](https://www.notion.so/The-ImData-Class-90a7263f2cd54511adccbc54ab05c8d7?pvs=21)

[Data Storage](https://www.notion.so/Data-Storage-2d4f884178ea43518ca8ceac2fa16cbd?pvs=21)

[Data Manipulation/Combination](https://www.notion.so/Data-Manipulation-Combination-4871d60e252642a18c357164950e5909?pvs=21)

[Data Processing](https://www.notion.so/Data-Processing-53cd529b95b04c849639442d1ae2dc53?pvs=21)

[Data Output](https://www.notion.so/Data-Output-577457650144400b9b284e95f4e34f57?pvs=21)

[Plans for addition](https://www.notion.so/Plans-for-addition-fe493e338fd44e19b389848da83b68c6?pvs=21)