package main

import "fmt"

func main() {
	for i := 0; i < 10; i++ {
		fmt.Println(i, "的fibonacci数是:", fibonacci(i))
	}
}

func fibonacci(i int) int {
	if i <= 1 {
		return 1
	}
	return fibonacci(i-1) + fibonacci(i-2)
}