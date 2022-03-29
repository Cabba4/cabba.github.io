---
layout: post
title: Buffer Overflow
subtitle: CTF notes for doing a buffer overflow
cover-img: /assets/img/bufferovf/cover.png
thumbnail-img: /assets/img/bufferovf/nail.png
share-img: /assets/img/bufferovf/nail.png
tags: [memory, heap, stack, overflow]
---


These are my notes for performing basic buffer overflow attacks on C++ programs during CTFS.

Beginners bible to buffer overflow ![ComputerPhile](https://www.youtube.com/watch?v=1S0aBV-Waeo)

Basic definition - A buffer overflow attack is possible in a low level program(like C) when a function tries to write a string/some input to a reserved memory slot with **fixed** length, but when we give more input than what can be stored, there is a memory leak and the program cant behave as it should.

Ex -> 
```C

#include <stdio.h>
#include <string.h>

int main( int argc, char** argv)
{    
    char buffer[10];           // 500 bytes have been added to the stack
    strcpy(buffer,argv[1])     // command line input can be > 500 chars hence buffer ovf is possible
    
    return 0;
}

```

So when there is more input than what can be saved in the memory the extra input overwrites the next memory addresses and that can be exploited to jump to some other memory address ie for some evil function.
Stack holds all custom variables -> stack grows downward, heap fills upwards (obv lol)

[Memory](/assets/img/bufferovf/memory.png)
 
At the end of the program(when it works properly) the return 0 jumps back to the memory address and stops executing. The stack looks like this -> 

High memory
----------- 
|function|
-----------
|parameters|
-----------
|return address|                            And here // if this is changed then program behaves differently 
-----------
|base pointer|                              Overwriting here ^
-----------
|buffer input|      So if we give extra input here the extra chars fill upward ^
-----------
|heap|

Providing more than required input leads to *Segmentation fault* 

Basic payload for buffer ovf -> \x90 also called no op sled (keeps sliding forward ie move to next memory address) 
Payload should have \x90 multiple times (till wherever the return address is) then have the shell code and then return address.



