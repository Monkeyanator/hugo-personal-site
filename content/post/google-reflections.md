---
layout: post
title: buzzing around in the cloud 
date: "2018-12-17"
---

![Sand Dune Run](/images/dune_run.jpg)

When I joined the Google Kubernetes Engine Node Team this Fall as an intern, I didn't know much about Kubernetes. Now, after three months of full time work on its internals, I still wouldn't say I know much about Kubernetes. I figure probably Google was given the source code by aliens around 2012, and open-sourced it a year later (not sure on the exact timeline there).

Kubernetes is complicated. Not all hard problems have simple solutions, and Kubernetes solves a lot of hard problems:

1. Making containers talk to each other is hard
2. Managing and observing deployed applications is hard
3. Scheduling onto compute resources is hard
4. Delivering secrets and config to running containers is hard
5. Service discovery is hard

I mean, taken together, this stuff is so hard to do right that it keeps thousands upon thousands of people around the world in well-paid work. So, in a nutshell: if the goal is to make a single tool to handle all the hard parts of deploying software, it's going to end up being pretty complicated. Complicated to the point that no single person can understand the whole picture (unless that person is Tim Hockin).

Hilarious to me was how specialized the roles have to be to make meaningful contributions to a project like Kubernetes. An engineer might be clueless about the Kubernetes networking model, but at the same time, the *only* person who understands how cluster-level metric aggregation works in detail. Some engineers know the deep-down internals for the kubelet, but wouldn't know the `kubectl` commands that a cluster admin would consider basic knowledge.

I won't talk too much about the work I did to make Kubernetes cooler (and I hope it is indeed cooler), because 1. I'm doing a post dedicated to it later, and 2. I've been talking about adding distributed tracing to Kubernetes for the last three months and I could use a break. Check my GitHub in the meantime if that's interesting to you. In the meantime, I'm in shock I got to work for a while on one of the most important open-source projects of the last decade, and I can't wait to see what comes next.
