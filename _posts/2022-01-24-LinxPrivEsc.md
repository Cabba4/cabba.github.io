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


