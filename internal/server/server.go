package main

import (
	"fmt"
	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"html/template"
	"net/http"
)

func indexHandler(w http.ResponseWriter, r *http.Request) {
	tmpl := template.Must(template.ParseFiles("web/templates/index.html"))
	err := tmpl.Execute(w, nil)

	if err != nil {
		fmt.Println("Could not execute template", err)
		http.Error(w, "Internal server error", http.StatusInternalServerError)
	}
}

func healthHandler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("OK"))
}

func main() {
	// Set up server
	port, _ := strconv.Atoi(os.Getenv("PORT"))
	r := chi.NewRouter()
	r.Use(middleware.Logger)

	// Static files
	fs := http.FileServer(http.Dir("web/static"))
	r.Handle("/static/*", http.StripPrefix("/static/", fs))

	// Router
	r.Get("/", indexHandler)
	r.Get("/health", healthHandler)

	http.ListenAndServe(":3000", r)
}
