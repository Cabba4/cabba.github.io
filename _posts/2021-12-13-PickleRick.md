---
layout: post
title: PickleRick CTF on TryHackMe
subtitle: Difficulty level - Easy
cover-img: /assets/img/picklerick/pickle.jpg
thumbnail-img: /assets/img/picklerick/cover.jpg
share-img: /assets/img/picklerick/pickle.jpg
tags: [THM, File Traversal, webshell]
---

This blog post is a walkthrough of an easy room on TryHackMe.

First we deploy the machine

![Machine Info](/assets/img/picklerick/active.png)

The prompt tells us to explore the web application on the machine address.

So first we can run nmap scan.

![Nmap](/assets/img/picklerick/nmap.png)

The scan shows us two open ports on 22 and 80. We will first investigate port 80. 

Opening the website on web-browser.

[!First Page](/assets/img/picklerick/page1.png)

Rick has done it again, we must find the three ingredients and help him out.

Doing basic enumeration we can check the console to see if there are any clues! We found a username in the comments - R1ckRul3s

[!username](/assets/img/picklerick/usename.png)

Now that we have a username we should find a login page of some sorts and some password! For that we can use gobuster, a popular directory enumeration tool or try some manual enumeration.

Gobuster command

~~~
gobuster dir -u http://10.10.202.23 -w /usr/share/dirb/wordlists/common.txt -x php,html,htm
~~~

Going through the endpoints on robots.txt we find some random text

[!password](/assets/img/picklerick/password.png)

Maybe this could be the password for username R1ckRul3s

Navigating to endpoint login.php and using these creds

They work!

Now we are presented with a Command panel window, running whoami and pwd here gives us some response. Meaning we have a webshell from which we can run basic commands. 

On running ls we can see that there is a file called Sup3rS3cretPickl3Ingred.txt and another called clue.txt both of these could be beneficial to us.

[!command](/assets/img/picklerick/command.png)

Now trying to read Sup3rS3cretPickl3Ingred.txt

~~~
cat Sup3rS3cretPickl3Ingred.txt
~~~

This shows us an error which states that command is disabled so next we can try to use some other text viewer command like - less

[!error](/assets/img/picklerick/error.png)

~~~
less Sup3rS3cretPickl3Ingred.txt
~~~

This works!

We got the first ingredient - mr. meeseek hair

[!first](/assets/img/picklerick/ing1.png)

Similarly we can try 

~~~
less clue.txt
~~~

The clue is to look around the file system from here on its more of listing contents of the file system and trying to find the other ingredients and then we use the less command to read them. The ingredients can be found at

~~~
Look around the file system for the other ingredient.
~~~

The second ingredient is in the home directory

[!second](/assets/img/picklerick/ing2.png)

And the third ingredient is found in the root directory. For that we can run the same commands but just add sudo in the beginning

~~~
sudo less /root/3rd.txt
~~~

[!third](/assets/img/picklerick/ing3.png)

Now we can submit all the ingredients and complete this CTF!
