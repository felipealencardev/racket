;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; a program that concatenates prefix and suffix and add _
; between them

; constants
(define prefix "hello")
(define suffix "world")

; functions
(define (concat p s)
  (string-append p "_" s))

; execution
(concat prefix suffix) ; hello_world

