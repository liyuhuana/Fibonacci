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
	}
}

func fibonacci(i int) int {
	if i <= 1 {
		return 1
	}
	return fibonacci(i-1) + fibonacci(i-2)
}