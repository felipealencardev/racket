;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_37) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; String -> String
; produces a string with the first character removed
; given: "hello", expect: "ello"
; given: "123", expect: "23"

(define (string-rest str)
  (substring str 1 (string-length str)))

; testing
; (string-rest "hello")
; (string-rest "123")