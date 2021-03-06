package main

import (
	"fmt"
	"time"
)

func main() {
	i := 0
	for {
		time.Sleep(time.Second)
		fmt.Println(i, "的fibonacci数是:", fibonacci(i))
		i++
		if i > 100 {
			i = 0
		}
	}
}

func fibonacci(i int) int {
	if i < 1 {
		return 0
	} else if i == 1 {
		return 1
	}
	return fibonacci(i-1) + fibonacci(i-2)
}