---
layout: post
title: spot the deadlock
date: "2020-11-29"
---

Developer Dave thinks locking twice makes his code twice as safe, what do you think?

{{< highlight go "linenos=table">}}

package main

import (
	"fmt"
	"sync"
)

var mut sync.RWMutex

func main() {
	go func() {
		for {
			mut.RLock()
			protectedRead()
			mut.RUnlock()
		}
	}()

	for {
		protectedWrite()
	}

}

func protectedRead() {
	mut.RLock()
	defer mut.RUnlock()
	fmt.Println("👀")
}

func protectedWrite() {
	mut.Lock()
	defer mut.Unlock()
	fmt.Println("😒")
}

{{< / highlight >}}
