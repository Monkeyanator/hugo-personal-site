---
layout: post
title: learning log 1/5
date: "2021-01-05"
---

So, I'm a slow learner. Tectonically slow. Sometimes it helps to keep track of the things I pick up over the course of a week to remind myself that I'm still breathing and haven't (just) been sitting on my ass.

## 1/5

*Things I Learned*
* Use `git config --global push.default current` to avoid having to specify branch on each push (wow, can't believe I've been copying `git branch` output this whole time...)
* Use `Prefix+{` to swap pane positions in `tmux` 
* Istio integration framework's `metallb` installation uses layer 2 (ARP) mode to assign LoadBalancer IPs from the back of `kind`'s subnet
* You can use the `--kubeconfig` flag to specify a `kubeconfig file` to use for a `kubectl` command
* Golang uses build tags to figure out which files to include in a given package. Looks like `// +build ...`. Can also use file suffixes like `platform_specific_code_linux.go` to accomplish this

*Things I Learned I Need to Learn More About*
* Don't understand how the `revision` field in the `IstioOperator` correlates to the `revision` field in Helm values
* Don't understand why Envoy sets up listeners on `targetPort` for Gateways

## 1/6

*Things I Learned*
* Istio sets up `inbound` listeners on `targetPort` since when the request reaches the proxy it will have already been translated by k8s networking layer! Makes sense, was thinking from outbound perspective where the listener should be on the `port`
* ValidationWebhook broken for Istio revisions in general because the chart exists in base and points to `/validate` on an `istiod` instance

*Things I Learned I Need to Learn More About*
* When a port 80 Gateway is created on an `ingress-gateway` with service mapping `80->8080`, the listener will be configured to listen on port `8080`. Where does this translation happen in the listener generation code?
* More about KNative! Don't know the first thing about it 

## 1/7

*Things I Learned*
* You can use `replace istio.io/api => /path/to/local/api/work` with go modules to replace dependencies with local versions (handy for `istio/api` experimentation, but cannot build in container without extra work)
* Lots of things about how Istio translates from `IstioOperator` spec to Helm values (some things I wish I didn't know...)
* `istioctl install --revision ...` is an alias for `istioctl install --set revision=...`
* You can set `parallelism` on Kubernetes jobs to determine how many pods to run at any given time

*Things I Learned I Need to Learn More About*
* The differences between the `istio-remote` and `istio-control` charts in the Istio manifests
* How does a request that reaches a Gateway with `X-Forwarded-Proto` get treated by Envoy?
* What is the difference between the `protocol` field and the `appProtocol` field on a service port?
