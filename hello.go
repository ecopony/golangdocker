package main

import (
	"fmt"
	"log"
	"net/http"
	"runtime"
)

func indexHandler(w http.ResponseWriter, r *http.Request) {
	log.Println("Serving a request!")
	fmt.Fprintf(w, "Hello world, I'm running on %s with an %s CPU.", runtime.GOOS, runtime.GOARCH)
}

func main() {
	fmt.Println("Starting on http://localhost:4000")
	http.HandleFunc("/", indexHandler)

	err := http.ListenAndServe(fmt.Sprintf(":%d", 4000), nil)
	if err != nil {
		fmt.Println("Error starting!")
	}
}
