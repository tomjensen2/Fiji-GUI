# Installation

Installing FIJI-GUI is a relatively simple process but unfortunately, to use the program with certain functionalities such as ImageJ integration it won’t compile as a .exe so the class file must be ran from MATLAB.

## **Hardware Requirements:**

Minimum recent PC or Mac, minimum 8GB if any large image volumes are to be processed, 16GB RAM would be recommended.  

## **Software Requirements:**

MATLAB 2022b or greater (for all features), I would not recommend the initial release of the most recent version; sometimes bugs remain.

[MathWorks - Makers of MATLAB and Simulink](https://uk.mathworks.com/?s_tid=gn_logo)

If ImageJ integration is wanted any recent Fiji package is required, most simply installed in /Documents folder. 

[Fiji Downloads](https://imagej.net/software/fiji/downloads)

## **Specific Installation notes**

1. Download .zip or clone the repository in Github 
2. Copy the Fiji.app folder downloaded into the Documents directory of your PC or Mac and add both folders to the MATLAB path. For instructions see below
3. Find mij.jar in the Fiji-GUI/Utility/For PC/ and copy to the MATLAB java folder
4. Open the [Fiji.app](http://Fiji.app)/jars folder and copy the ij-1.*.jar file (see below) to the MATLAB java folder.  
    
    On Mac this requires right clicking Fiji.app and clicking ‘**Open Package Contents**’, the same will have to be done to access the /java directory in the MATLAB app
    

![Untitled](Installation%205181e556a21e43a5ba79dfcc7f4a69de/Untitled.png)

The MATLAB/java directory should look similar to below once complete, 

![Untitled](Installation%205181e556a21e43a5ba79dfcc7f4a69de/Untitled%201.png)

### Increasing the Java heap memory

MIJ works to link ImageJ-MATLAB by running an instance of ImageJ within MATLAB.  Meaning that the size of the image being processed by ImageJ is dependent on the memory MATLAB allocates to it.  By default this is only 1GB or so, if one wishes to open large Frame Scans via MIJ it is recommended to increase this allocation by the following action.

In MATLAB open the Home tab and click Preferences.

Click on General and Java Heap Memory: use the slider to increase the value

![Menu options to change Java Heap memory allocation](Installation%205181e556a21e43a5ba79dfcc7f4a69de/Java_Heap.png)

Menu options to change Java Heap memory allocation

### Setting the default paths for the GUI

A key point for correct installation is to make sure the GUI knows where to look for files.  In the Fiji-GUI root folder the file defaultvars.m is present, the function in this file returns a structure containing defaults for various functions.  Lines 27-47 contain the default paths the GUI will search for change these to match the equivalent file locations on your computer.  

This file will also set many default variables for many functions so it may be worth looking through what can be preset before startup. 

![Untitled](Installation%205181e556a21e43a5ba79dfcc7f4a69de/Untitled%202.png)

### Setting the MATLAB path

Copy downloaded directorys to suggested locations

Open MATLAB and click on the Set Path icon in the Home Tab

![set path.png](Installation%205181e556a21e43a5ba79dfcc7f4a69de/set_path.png)

Click Add with Subfolders pushbutton and Select the Fiji-GUI folder from the MATLAB folder repeat with the [Fiji.app](http://Fiji.app) folder in documents.

The process is much the same on a Mac, but [Fiji.app](http://Fiji.app) is displayed as a program rather than a directory.