---
layout: post
title: a case study in overthinking
date: "2020-05-11"
---

This is a short writeup about what was perhaps the easiest challenge from the [Volga CTF](https://volgactf.ru/en/) 2019 Quals and the winding path to solving it as a beginner.

Let me set the stage. COVID-19 shuts down the nation and I realize that I'm about to be spending a lot of time in a small, mostly-empty room with nothing to do. I didn't want to spend my entire spring break playing [Dota](http://blog.dota2.com/?l=english) so I did something I'd been talking about for a while: I messaged some guys and put together a team to compete in virtual [CTFs](https://trailofbits.github.io/ctf/) with (team name: _The Compile Time Terrors_). Soon, we set our sights on Volga CTF. 

None of us knew much about security past what we'd learned from [LiveOverflow](https://www.youtube.com/channel/UClcE-kVhqyiHCcjYwcpfj9w/featured), so winning wasn't on my mind, but I was pretty determined to come out knowing some new shit.

### The challenge

So, the people who write these challenges tend to be pretty cheeky, and the description of the challenge usually gives some tongue-in-cheek hint. It'll be like _"Johnny thinks that running code in a VM is safe... what do you think? ;)"_ or something like that.

The name of this particular challenge was "Alternative" and the description was "this challenge is... _alternative_". Ominous. I could see from the contest page that a staggering number of teams had solved it, so, encouraged, I decided to give it a go. Clicking through to a linked site showed a plain web page with this text:

> Hello there! Welcome to our first crypto challenge! Try to find some secret information here.

I open Chrome DevTools and poke around the page. Nothing sticks out. There are no other files being loaded, not even a stylesheet. The HTML was plain, no hidden elements, no links, nothing except the text really.

Now, here's where things go off the tracks. The challenge was tagged as `crypto`, so I'm thinking this _must be_ some kind of cipher. The `crypto` problems from previous contests were mostly math-intensive encryption breaking, so why wouldn't this one be? I voice this hunch to the Discord chat. A teammate and I set off on trying to extract the hidden message from the innocuous welcome-message on the page.

We're at it for hours. [Substitution ciphers](https://en.wikipedia.org/wiki/Substitution_cipher), [Caesar ciphers](https://en.wikipedia.org/wiki/Caesar_cipher), even [book ciphers](https://en.wikipedia.org/wiki/Book_cipher) with the VolgaCTF homepage as the source text. It got to the point where we were tracking obscure mathematical patterns in the text, and that's around when we decided it might be best to take a break.

### Fresh perspective

So, I'm back from dinner, and discouraged that hundreds of teams have solved this challenge while we're still stuck on it. 

Then, all at once, it hits me. Alternative... as in _subject alternative name_. The subject alternative name, or [SAN](https://en.wikipedia.org/wiki/Subject_Alternative_Name) is a field on x509 certificates, which I should have really remembered immediately, given that I spent 3 months literally working on a CA. Viewing the SSL certificate for the webpage and checking the SAN field yielded the key immediately.

![CTF Discord Chat](/images/alternative-chat.png)

The label `crypto` still seems a bit misleading in hindsight, but eh, fair enough. Is there a lesson to be learned here? Not really. Maybe the value of taking a step back when you're too close to a problem. We ended up finishing top 1/3rd of finishers in VolgaCTF, which was much, much better than I'd expected, and solved just one other problem over the span of the contest.
