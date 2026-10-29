TRichEdit has full support for images from Delphi 11. 
If you don’t have Delphi 11, an alternative solution I have found is to extract the TJvCustomRichEdit (JvRichEdit.pas) component from the Jedi package. 
It was a bit of work, but this component functions as it was supposed to.
 
The Debug build of the two demos in the Demo folder also uses the optional [Autopilot for Delphi](https://gabrielmoraru.com/my-delphi-code/autopilot-for-delphi/) bridge, which lets an AI assistant drive the running app; the Release build does not need it.
