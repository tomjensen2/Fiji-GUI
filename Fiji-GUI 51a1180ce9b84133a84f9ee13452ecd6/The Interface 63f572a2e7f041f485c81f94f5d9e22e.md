# The Interface

The Fiji GUI interface is quite busy but I think reasonable user friendly.  I shall split it out to its main components below and try to highlight use cases.

![Fiji-GUI.png](The%20Interface%2063f572a2e7f041f485c81f94f5d9e22e/Fiji-GUI.png)

### Dataitem List / input-output

![Untitled](The%20Interface%2063f572a2e7f041f485c81f94f5d9e22e/Untitled.png)

The main point of interface is with the Listbox (app.Listbox2) displaying imported data displayed as the concatenation of the item number - [data type (see)](The%20ImData%20Class%2090a7263f2cd54511adccbc54ab05c8d7.md) - the dataitem comment, which can be edited in the text field box below it.

A single click on an listbox item will call the function to parse the item, and display the averaged trace of the UG property (default) on the primary data axis with the Aux1 property (default) on the secondary axis.  Options in the GUI enable changing default channels, enabling common normalization parameters.  Choice to automatically open items in ImageJ…

[Select and Open Dataitems.mp4](The%20Interface%2063f572a2e7f041f485c81f94f5d9e22e/Select_and_Open_Dataitems.mp4)

Note the **Find Dataitems** textbox.

Often I will have recordings with >100 individual trials in different conditions, sometimes with multiple ROIs.  Once these are separated it can become time consuming to parse the file names/numbers.  As such I added a routine to search the comments field of the ImData array and return the items with either a text string or numeric index see video:

[Search Dataitems.mp4](The%20Interface%2063f572a2e7f041f485c81f94f5d9e22e/Search_Dataitems.mp4)

### Selecting data within the interface