---
layout: post
title: Information Security Sem-1
subtitle: Review of first sem at TAU
cover-img: /assets/img/securityprotocols/cover.png
thumbnail-img: /assets/img/securityprotocols/share.png
share-img: /assets/img/securityprotocols/share.png
tags: [2024, TAU, review, cryptography, security, dsa, cloud]
---

My honest and personal review of my first term at TAU in Information Security program and all the github repos related to it.

## Courses I took

For my first semester I was quite exciter and maybe overloaded my schedule a bit, I enrolled into 6 courses and was forced to do 2 orientation realted courses (something which I could have lived without :) 

My courses that I chose were
- CyberSecurity 1
- Cryptography Engineering
- Security Protocols
- Cloud technologies

Courses I had to enroll in were
- Data structures and algorithms
- Differential and Integral calculas

I will skip writing about orientation courses since I didnt enjoy them but they were vital and I understand why they are included in the program structure.

Of these 6 courses I have completed 5 of them with the exception of CyberSecurity 1, which I was most excited about but left me questioning the courses and entire programs existence (more on this later)

## Course Ranking based on work effort

If I rank the courses I did based on the amount of effort I had to put in, it would be so 
| Subject                          | Weekly Hours       | Hours During Final Submissions/Exams |
|----------------------------------|--------------------|---------------------------------------|
| Cryptography Engineering         | 20-30 hrs/week     | 5-10 hrs/day                          |
| Data Structures and Algorithms   | 8-10 hrs/week      | 10-12 hrs/day                         |
| Security Protocols               | 4-5 hrs/week       | 8-10 hrs/day                          |
| Differential and Integral Calculus | 2-6 hrs/week      | 1-2 hrs studying for exam             |
| Cloud Technologies               | 5-6 hrs biweekly   | -                                     |
| Cyber Security 1                 | 2-4 hrs/week       | By choice                             |


One thing that already sticks out to me is that I was putting in 8-10hrs a week for the course Data Structures and additional 2-6hrs for Math course ie courses I didnt choose to do but I *had* to do since graduating from TAMK meant I am required to complete a certain study package. This package has a total of 25 credits so out of 120 for the masters, after removing 30 for thesis and 25 from this package, I only get to choose 65 credits. Not very nice :(

I will do a short breakdown of the courses now.

## Cryptography Engineering

By far the best course I had this semester, I learned so much about a field I wasnt very excited about and had doubts starting this course. But in the end I can say I am glad I took this course since it brought to me the peak university experience even though it was completely online. The teacher was awesome and had planned the course really well. Each week was described in detail and it was easy to find out what was expected of me. There was more than enough information about the weeks topics and each week had quizzes and and coding exercises. 

The book for the course was - [Understanding Cryptography First edition](https://www.cryptography-textbook.com/) by Christof Paar and the video lecture series was also by him which is all there on YouTube!

Initially this was off putting for me since I was conflicted about following a course where video lectures arent even recorded by the teacher incharge and just available on YouTube for everyone, but as the course progressed and the coding assignments became more and more demanding I was glad that I could understand the book straight from its author and I believe Christof Paar's enthusiasm for crypto rubber off me and made me interested in it too. He is by far the best online lecturer I have ever had.

There were two course exams and both were from a fixed question pool making the exam easy if you know your way with ChatGPT and understand the topics, which would only be possible if you worked on the course every week.

Course rating 4.5/5 Highly recommened

Github repo - [https://github.com/Cabba4/cryptography](https://github.com/Cabba4/cryptography)

The repo contains all the coding exercises and my answers that I used to prepare for the final exams. The readme for the coding exercises is taken directly from the courses' moodle section.

## Data structures and Algorithms


This course was like any basic Data structures and algorithm course ever and I've done my fair share of them in high school and even in my bachelors so I was a bit annoyed by doing these things again. Topics like Decrease divide conquer, Trees, Heaps, Graphs and algorithm efficiency were covered. The weekly workload involved watching pre-recorded videos and then doing some exercises both conceptual and theoretical. The coursework was entirely C++ but with freedom for environment setup (as long as it compiles and showed the same output as that of the teacher). There were two final course works which would run only in specific environments and students had to write algorithms for functions instead of implementing the whole program. 

The course was quite intense as previously it had been a 2 period course ie lasting the whole semester but for the implementation I did they decided to only have it in one period without changing anything as far as I know, so doing the work of 3 months in 1 wasnt fun. 

I also didnt enjoy the course because I really dont see the point of making 'Information Security' students implement efficient algorithms for traversing trees and heaps. It really isnt needed, as an employer I wont ask if the bash script the new Jr Info Security intern wrote is linear in time or just doing what it needs to do (which is dont use sudo i guess xD)

Nevertheless this course took a lot of effort and fighting with ChatGPT only for me to learn nothing :) 

Course rating - 1/5 Would not recommened even to a Comp Sc major tbh.

Github repo with course works - [https://github.com/Cabba4/dsa-2024](https://github.com/Cabba4/dsa-2024) good luck trying to run it if you dare to.


## Security Protocols

The course was about learning about different types of security protocols that are used in every day world and implementing them on a small scale. Each protocol had a tutorial around it as well. The protocols were discussed in ppt style pre-recorded videos by various teachers and tutors. I think there were 4 teachers+tutors for the course and I am really not a fan of such courses where theres too many people involved. Too many cooks do spoil the broth :)

The vidoes were, not helpful. The tutorials were, awesome. So overall I am conflicted about this course. In terms of content and what this course couldve been it sounded amazing to me but the implementation was lacking and left me wondering how could such an interesting topic be reduced to this. The course wanted to develop the students mindset as hackers and try to encourage them to find ways to break protocols involved in key exchange and information signing, but how can students be expected to be fluent in protocols theyve never tackled before? Also making a ppt with moving elements is captivating but only for the first 5 minutes (maybe thats just me but I prefer black board style teaching still).

The tutorials did make up a bit but they were mostly step by step instructions which were fun to follow but not really teaching anything. Or maybe if I go back to them and do them 3-5 more times would I learn anything concrete, until then it just stays in my memory for a week or so and then it goes away. 

The coursework 1 was interesting and I actually enjoyed doing it, it was a moodle quiz of sorts but dealt with all protocols in a greater depth than the tutorials. Coursework 2 on the other hand was a nightmare for me, I chose to implement a Homomorphic Encryption on a small machine learning algorithm (I dont really like machine learning tbh) and I implemented it with python. Setting up the environment was soooo time consuming maybe because the community for OpenFHE python isnt that big but overall this coursework was 10x more demanding than coursework 1. Nevertheless I did learn a lot and did feel the sense of satisfaction when I finally made it work.

My issue with coursework 2 was that it was supposed to be based on a research paper which was 25-30 pages long, and yes Masters students can be expected that much but maybe not on such complex topics. Combined with the sub par videos which really didnt explain me anything I was dissatisfied by the course for sure.

Course rating - 3/5

Github repo - [https://github.com/Cabba4/aliceAndBob/tree/main](https://github.com/Cabba4/aliceAndBob/tree/main)


## Differntial and Integral Calculas

Course involved Matlab, I dont know how to use matlab. I tried to learn matlab, I now hate matlab.

Nothing against the course in general, I just dont see why I have to do it :)

I got by most of the course based on the math I remembered doing in High School, 5 years later yeah most of that is gone. I also prefer doing pen and paper math but taking the exam that way wasnt allowed which I understand but felt like a huge handicap.

Again this is one of the **mandatory** courses I have to do to get a masters, which I dont enjoy.

Course rating - 3/5 nothing wrong with the course, I just dont like it.

## Cloud Technology

This course was pretty fun, it involved numerous tutorial based on DevOps teachnologies like Docker, Ansible, Kubernetes and Terraform and since I work as a DevOps engineer this course was easy for me. The tutorials gave a good starting point but also left a lot to be figured out on your own, it was a right balance and even though the issue with the tutorials persists; that step by step instructions are easy to follow but difficult to remember I enjoyed doing them and definitely learned about Terraform and a few new tools for Docker image handling.

This course was also a one period course but the workload was adjusted to that and teacher did a good job overall.

Course rating - 4.5/5 Would recommend

Github repo - [https://github.com/Cabba4/terraform-stuff](https://github.com/Cabba4/terraform-stuff) only terraform stuff here since most other stuff was already known to me. 


## Cybersecurity 1

The course I was most excited for has sadly disappointed me the most, completely self paced with a very ancient looking learning platform and no fixed studying agenda. There are a few automatic exercises which are supposed to be completed before taking exams which are infact fun but the overall freedom of the course left me with no plan to go through the course. I ended up spending barely anytime with this course and I hope to change it this semester. 

I had hoped for a course which would have a teacher who is passionate about the subject and would make us interested in it too, ofcourse cyber security is a huge space and theres so much to learn in it but maybe dont burry the new student in papers and pdfs and mind maps already :)



