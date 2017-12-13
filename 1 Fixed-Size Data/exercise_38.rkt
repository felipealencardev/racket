;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_38) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; String -> String
; produces a string with the last character removed
; given: "hello", expect: "hell"
; given: "123", expect: "12"

(define (string-remove-last str)
  (substring str 0 (- (string-length str) 1)))

; testing
 (string-remove-last "hello")
 (string-remove-last "123")