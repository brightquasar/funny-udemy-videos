RicksTricks

This dir contains tricks we oldsters have used for decades while working at the
command line in any POSIX compliant OS: Unix|Linux (or, even in MS-DOS) to create 
multi-line files with a single command while at an actual terminal (terminals 
used to be dumb physical “workstations”). In your “terminal” these tricks are much 
easier, since the “console” is always named /dev/tty, while, on a real terminal, 
one had to first discover which tty you were on, e.g., it may have been tty04 or 
some-such. 

These tricks are possible due to the fact that in all POSIX OSs — damn-near-everything
is, or can be, consider as being a file — as you will see demonstrated in the .png 
files herein. In my day, /dev/tty was usually aliased to the filename “con” but I assume
that this convention has been dropped, either from lack of use, or to release con from 
being a reserved word at the command line. Back in the day, every flavor of DOS would 
also allow one to “copy con newFile.txt” — but, this no-longer works in Windows10 preview 
— and Win10 is the only MS OS I will touch. 


INSTRUCTIONS ::
———————--------

Firstly. view the file “(001)_wholeFileNames-inThisDir.png“  ***
   *** (and keep it on your desktop for reference) ***
        -----------------------------------------  

View the remaining files in this dir in their numerical order: given in ()s