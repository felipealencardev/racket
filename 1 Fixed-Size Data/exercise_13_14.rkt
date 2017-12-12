;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_13_14) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; define the functions: string-fist and string-last

; functions
(define (string-first str)
  (string-ith str 0))

(define (string-last str)
  (string-ith str (- (string-length str) 1)))

; tests
(string-first "hello") ; h
(string-last "hello") ; 0

(string-first "world") ; w
(string-last "world") ; d