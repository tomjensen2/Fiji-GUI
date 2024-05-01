# Data Import, Combination and Storage

All imaging data in Fiji-GUI is stored as a n by 1 array of ImData objects in the property **app.Datastore_class.**  

On startup the property is populated with an empty ImData object _template.  

The main point of interface is with the Listbox (app.Listbox2) displaying imported data displayed as the concatenation of the item number - [data type (see)](https://www.notion.so/Data-Types-8fe4143be95d4555acb2b4a46a4a9a85?pvs=21) - comment.

If any operation adds or removes items from the app.Datastore_Class property the .findComment function should be called with this Listbox as the input argument.  This will repopulate the listbox with the updated list.

A single click on an listbox item will call the function to parse the status of the UI channel selections, and display the spatially averaged trace of the channel selected in the GUI.  By default this works via the UG property on the primary data axis with the Aux1 property (default) on the secondary axis.

**Data Import**

**Datafile View**