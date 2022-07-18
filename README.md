# 3D-Printing


This repository is for both software and 3D-Models related to 3D Printing.

Most of what will be put in this repository will be 3D-Printable models, and some that are just mostly 3D-Printable.  The goal is to share useful designs, especially the components most do not print as printable usable models (bolts, nuts, clip connectors, etc).  Do to the positive properties for such things many items will best print in PLA with a layer height of between 0.05mm and 0.1mm (thin layers).

Overall this Repo will have various types of bolts, nuts, clipping edge designs, springs, complete bearings, rails, and other things people do not think to print that can be printed (and NOT PURCHASED).  PLA has many advantages, including being a renuable material, we are in this for the long hull (not to help deplete resources).

Most items are created using OpenSCAD, as it is the 3D modeling software I am best able to work with.  As such the OpenSCAD file will be included along with the STL files for printing.

One eventual goal is to provide enough parts that if you have the controller board (including drivers), Steppers, three low cost motors (for the fans), a J-Head hot end (low cost, easy to cool), and a peice of glass you will be able to print ALL other parts of the printer.  That is there will be ZERO need of any kind of pre-made fasteners, pre-made fans, etc.  The goal is to be able to print a complete 3D-printer (minus the few things mentioned above) in under 2KG of PLA.  There is the eventual goal of going a step furthur and adding a Wax extruder and hot end to create parts to be used to lost wax mold the metal for things like the hot-end, thus increasing the amount of the printer that is 3D-Printed (a step closer to full RepRap in nature).

On the software side this will likely include some software for Macintosh System Software and some for RISC OS.

# Nuts and Bolts:

A lot of projects require people to purchase seperately bolts and nuts, this should not be the case as 99% of what is needed for nuts and bolts can be printed.  Here are some known specs from my experience:

For layer height of 0.05mm:
* Bolt Outside Diameter down to 1.5mm (radius down to 0.,75mm).
* Nut inside diameter down to 1.55mm (radius down to 0.775).
* Thread pitch down to 0.5mm (that is 2 threads per mm).

For layer height of 0.1mm (more common):
* Bolt Outside Diameter down to 2mm (radius down to 1mm).
* Nut inside diameter down to 2.1mm (radius down to 1.05mm).
* Thread pitch down to 0.75mm (that is 1.25 threads per mm).

Most of the testing I have done is with a low cost FDM 3D printer, and mostly with layer heights of 0.05 for threaded objects.  It may be possible to do better at 0.1mm layer height than I have tested as that is minimally tested.  The above numbers are with a nozle diameter of 0.2mm, this is quite smaller than normal, though it should be possible to achieve the same results with a nozle diameter up to 0.4mm.

Also remember with threaded objects that you can achieve smooter results by quickly polishing the end part with toothpaste, though do not overdue it.
