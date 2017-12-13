;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_35) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; String -> String
; extract and show the last character of a string
; given: "hello", expect: "o"
; given: "123", expect: "3"

(define (string-last str)
  (string-ith str (- (string-length str) 1)))

; testing
;(string-last "hello")
;(string-last "123")