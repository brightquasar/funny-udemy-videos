# This is R.Woolley's version of the first project from the four-part series from the book ...
# ... The iOS Apprentice, the free ver 3.3 is the video tutorial I used to code-up this fun project.
# This first free section was so awsome that I have purchased the other 3 sections already.
# and, I look-forward to learning so much more as I go through the additional purchased sections. 
#
# as I always do, I used an old trick to create this new multiline file, directly from the command
# ... line. The trick is to use the cp command with the device-name of the IO device used by terminal.
# like so: cp /dev/tty README.md   you then hit enter, and can happily type line after line, each 
# ending with the enter key. When finished composing your new file type a ctrl-d and there you have it!
# ... oh, you should do that ctrl-d after hitting the enter key, so it is done on a line by itself:-?
#
# Then, to see the contents of the new file, show-off your new Unix mojo by doing it in the geekiest
# way possible: cp README.md /dev/tty   cat may be easiest for this, but I like to mix things up ...
# sometimes I will use "less", but you may also want to try: head README.me   "head" is cool in that it
# just shows the first page of the top "head" of the file, and then automatically terminates, far-out.  
#
# But the oddest way of all to make a multi-line file sans an editor like pico, it to run the less 
# command in the background, thusly "less README.md &"   that "&" at the end of the command line 
# tells the shell to run less "in the background", normally if you call less on a filename that does 
# not yet exist less will quietly open a temp file by that name, then notice that there is no file 
# in the dir by that name and quickly terminate with an error message. But, running it in with an & 
# trailing will keep less alive, with that temporary file open, until you tell it to terminate using the 
# fg command. Meanwhile you can echo text >> README.md   repeatedly, adding as many lines of text to 
# that temp file as you like, then when you do a "fg less" less pops up in full-screen mode, you just 
# need to remember that the only way out of less now is the magic letter "q", you can try ctrl-d, or 
# ctrl-q, escape, but only that solo magic q will get you out, why on earth the author of less did not
# see fit to include the magic exiting info in the highlighted (END) line is beyond me!!
#
# I have included a folder here called RicksUnixTricks wich has .png files of screen-shots of all this
# silly-fun action ( and some more informative text for you to savor:-? ) 
