package main

import (
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	panic(http.ListenAndServe(":"+port, http.FileServer(http.Dir(""))))
}
