;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_34) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; String -> String
; extract and show the first character of a string
; given: "hello", expect: "h"
; given: "123", expect: "1"

(define (string-first str)
  (string-ith str 0))

; testing
; (string-first "hello")
; (string-first "123")