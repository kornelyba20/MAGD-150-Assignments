##Project 2  

I spent a lot of time trying to figure out why the keypress event was creating copies of my drawn objects and not deleting  
the left over elements on the last frame, I now relize that is because I put the background function in the setup block  
instead of the draw block.
