package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"os/exec"
)

func handler(w http.ResponseWriter, r *http.Request) {
	log.Print("dbt service: received a request")

    cmd := exec.CommandContext(r.Context(), "/bin/sh", "script.sh")
    cmd.Stderr = os.Stderr
    out, err := cmd.Output()
    if err != nil {
        log.Print("An error occurred")
        log.Print(err)
        w.WriteHeader(500)
    }
    log.Print(out)
    w.Write(out)


}

func main() {
	log.Print("simple-data-stack-dbt: starting server...")

	http.HandleFunc("/", handler)

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	log.Printf("dbt service: listening on %s", port)
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%s", port), nil))
}
