# Nuts and Bolts:

Most of these are simple triangular threaded nuts and bolts.  All bolts have inside drive (like hex key bolts) of either square or triangle profile.  Nuts are either square outside or have two pin type drive.

The part names for bolts are in the form of (in order):
* DrvType : **Sqr** for Square drive and **Tri** for tirangle Drive, this is followed by the size of the drive hole.
* H..   : Head diameter where the .. is replced by the head diameter in mm.
* L..   : The length of the threaded shaft in mm.
* D..   : The outside diameter of the threaded shaft in mm.
* P..   : The thread pitch in mm per thread (eg 0.5 is 2 threads per mm or 20 threads per cm).
* .stl    : File name extension for crude ancient style Operating Systems that use the file extension to determine the file type.

The part names of the Nuts take the form (in order) of:
* Type   : **SQNut** for outside square, **PNut** for four point hold round outside, or **RNut** for smooth round outside.
* O..    : Outside diameter in mm (or side of square for SQNut).
* T..    : OD of the inner threads in mm (to match the bolt size that fits).
* P..    : Thread pitch in mm per thread (same as bolts).

This directory just contains the nut and bolt sizes I have found tend to be the most used.  If you need a custom size grab the SCAD source and set your parameters then render it.

Most models assume that your printer is capable of printing with an edge tollorance between two fitting parts of 0.1mm or better.  If your printer is not able to accomplish this get the SCAD files and modify the tollorance setting, and export a new STL for your use.

**NOTE:** These can be dificult to print if your printer is not well tuned.  My best results have been on a TronXY X1 that is stabalized to allow for tolerances of 0.05 clearence, reliable layer height of 0.05 (can do smaller), printing at high tempurature for PLA (around 210 degrees C), with good part cooling.

**NOTE:** There are limits to the strength of these bolts and nuts.  They are good for many printed items, having equal strength to many printed items.  Though as the layer adhesion is the week point to worry about there is a significant limit, take care not to rely on too much stress on the bolts and nuts.
