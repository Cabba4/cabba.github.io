---
layout: post
title: Agent-Sudo CTF on TryHackMe
subtitle: Difficulty level - Easy
cover-img: /assets/img/Agent-Sudo/logo.png
thumbnail-img: /assets/img/Agent-Sudo/cover.jpg
share-img: /assets/img/Agent-Sudo/cover.jpg
tags: [THM, steganography, cve, root, binwalk]
---

This blog post is a walkthrough of an easy room on TryHackMe.

First we deploy the machine

![Machine Info](/assets/img/Agent-Sudo/active.png)

There is no prompt/starting info so we go straight ahead for enumeration

![Nmap](/assets/img/Agent-Sudo/nmap.png)

The scan shows us 3 open ports 21,22 and 80 in the top 1000 ports. 

Opening the website on web-browser.

[!First Page](/assets/img/Agent-Sudo/page1.png)

The page has only some text and that hints us to use a 'codename' as user-agent to access the site.

So we can use burp or a user-agent switching extension!

_For this ctf you will have to use chrome as firefox has some issues with switching user-agent_

By using user-agent switcher and trying for differnet agents like "A", "B" .. we get a strange output for agent "C".

[!username](/assets/img/Agent-Sudo/username.png)

From here we get the name of the agent ie Chris. Agent R is talking about some stuff with agent J and change of password. We can try to crack the password for Agent chris now.

We know there is an ftp service and we have a username chris so lets try to crack it

~~~
hydra -l chris -P /usr/share/wordlists/seclists/Passwords/Common-Credentials/10k-most-common.txt  ftp://10.10.218.225
~~~

We found a password for user chris so now we can login via ftp!

[!password](/assets/img/Agent-Sudo/password.png)

On the ftp connection we can see 3 files and one of them is a message for agent-J.

[!message](/assets/img/Agent-Sudo/robots.png)

So now we download the images too. 

Since agent_C mentioned passwords being saved in the images we should use some steg tools. On running strings on both the images we can see that one image has some file in it.

[!file](/assets/img/Agent-Sudo/agentR.png)

On running exiftool we didnt get anything but on running binwalk which can search for code from within files we get a zip!

~~~
binwalk -e cutie.png
~~~

From binwalk we get a new folder with 4 new 2 of them are extracted versions of the zips and do not have the full info.

Trying to crack 8702.zip via john the ripper

[!zips](/assets/img/Agent-Sudo/john.png)

Now we can extract the actual info from the zip. And read the file To_agentR.txt

~~~
john --format=zip output.txt
~~~

The file has the following message 

~~~
Agent C,

We need to send the picture to 'QXJlYTUx' as soon as possible!

By,
Agent R
~~~

The name of the picture is just base64 version of Area51 so maybe that could be a password for something.

Trying the password on both cutie.png and cute-alien.jpg, seems there is something hidden in cute-alien after all.

We get a password and a new username james.

SSH-ing into the machine with these new creds we can instantly get the user flag and there is another file.

To get the file we can use scp as we already have ssh conncetion

~~~
scp -p james@10.10.207.92:/home/james/Alien-autospy.jpg transfer.jpg
~~~

_my box crashed while working on it hence the change in ips_

Google searching this file gives us information about the famous Roswell incident.

Now for priv-esc!

On running 
~~~
sudo -l 
Matching Defaults entries for james on agent-sudo:                                                   
    env_reset, mail_badpass,                                                                         
    secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin\:/snap/bin         
                                                                                                     
User james may run the following commands on agent-sudo:                                             
    (ALL, !root) /bin/bash 
~~~

This means we may run /bin/bash as any user except sudo, but there is a quick bypass for that => https://www.whitesourcesoftware.com/resources/blog/new-vulnerability-in-sudo-cve-2019-14287/


[!root](/assets/img/Agent-Sudo/root.png)

And here we get root!

Now we can find the root flag, which is probably in the /root directory

And thats it! We have completed this CTF

[!root](/assets/img/Agent-Sudo/done.png)

Now we can submit all the flags and complete this CTF!
