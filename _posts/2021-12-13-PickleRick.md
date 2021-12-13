---
layout: post
title: PickleRick CTF on TryHackMe
subtitle: Difficulty level - Easy
cover-img: /assets/img/picklerick/pickle.jpg
thumbnail-img: /assets/img/picklerick/cover.jpg
share-img: /assets/img/picklerick/pickle.jpg
tags: [THM, ]
---

This blog post is a walkthrough of an easy room on TryHackMe.

First we deploy the machine

![Machine Info](/assets/img/picklerick/active.jpg)

The prompt tells us to explore the web application on the machine address.

So first we can run nmap scan.

![Nmap](/assets/img/picklerick/nmap.png)

The scan shows us two open ports on 22 and 80. We will first investigate port 80. 

Opening the website on web-browser.

Ran nmap

1) Found 22 and 80

80 has a website

1) inspect console

Found username - R1ckRul3s

Did gobuster enumaration - Wubbalubbadubdub

2) Tried a lot for ssh but publice key private key pair not there

3) Ran dirsearch for php files and found login.php (couldve tried manually)

Used creds and it worked


Gives me portal.php which has command panel

ran basic commands ls and ls-al

total 40
drwxr-xr-x 3 root   root   4096 Feb 10  2019 .
drwxr-xr-x 3 root   root   4096 Feb 10  2019 ..
-rwxr-xr-x 1 ubuntu ubuntu   17 Feb 10  2019 Sup3rS3cretPickl3Ingred.txt
drwxrwxr-x 2 ubuntu ubuntu 4096 Feb 10  2019 assets
-rwxr-xr-x 1 ubuntu ubuntu   54 Feb 10  2019 clue.txt
-rwxr-xr-x 1 ubuntu ubuntu 1105 Feb 10  2019 denied.php
-rwxrwxrwx 1 ubuntu ubuntu 1062 Feb 10  2019 index.html
-rwxr-xr-x 1 ubuntu ubuntu 1438 Feb 10  2019 login.php
-rwxr-xr-x 1 ubuntu ubuntu 2044 Feb 10  2019 portal.php
-rwxr-xr-x 1 ubuntu ubuntu   17 Feb 10  2019 robots.txt


There is one ingredient here but

cat Supering doesnt work shows error

Go for clues

cat clues.txt

same error

Tried less and it worked

less clues.txt

Look around the file system for the other ingredient.

Says file system and 

pwd says 

/var/www/html

Doesnt let me change directory

But ls works with path treversal


dir => /home/rick/

total 12
drwxrwxrwx 2 root root 4096 Feb 10  2019 .
drwxr-xr-x 4 root root 4096 Feb 10  2019 ..
-rwxrwxrwx 1 root root   13 Feb 10  2019 second ingredients

less worked on second ingredients => 1 jerry tear
less also worked on first ingredient => mr. meeseek hair

sudo -l

Command shows that i can run any command <surprised>

ls -al ../../../root

shows 

total 28
drwx------  4 root root 4096 Feb 10  2019 .
drwxr-xr-x 23 root root 4096 Oct  7 21:24 ..
-rw-r--r--  1 root root 3106 Oct 22  2015 .bashrc
-rw-r--r--  1 root root  148 Aug 17  2015 .profile
drwx------  2 root root 4096 Feb 10  2019 .ssh
-rw-r--r--  1 root root   29 Feb 10  2019 3rd.txt
drwxr-xr-x  3 root root 4096 Feb 10  2019 snap

sudo less ../../../root/3rd.txt

fleeb juice

Found authorise_keys 

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCMLOT6NhiqH5Rp36qJt4jZwfvb/H/+YLRTrx5mS9dSyxumP8+chjxkSNOrdgNtZ6XoaDDDikslQvKMCqoJqHqp4jh9xTQTj29tagUaZmR0gUwatEJPG0SfqNvNExgsTtu2DW3SxCQYwrMtu9S4myr+4x+rwQ739SrPLMdBmughB13uC/3DCsE4aRvWL7p+McehGGkqvyAfhux/9SNgnIKayozWMPhADhpYlAomGnTtd8Cn+O1IlZmvqz5kJDYmnlKppKW2mgtAVeejNXGC7TQRkH6athI5Wzek9PXiFVu6IZsJePo+y8+n2zhOXM2mHx01QyvK2WZuQCvLpWKW92eF amiOpenVPN

closing off here
