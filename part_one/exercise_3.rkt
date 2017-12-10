;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; a program that add _ at position i of a string

; constants
(define str "helloworld")
(define i 5)
(define prefix (substring str 0 i))
(define suffix (substring str i (string-length str)))

; functions
(define (add-at-position str i)
  (string-append prefix "_" suffix))              

; execution
(add-at-position str i) ; hello_world