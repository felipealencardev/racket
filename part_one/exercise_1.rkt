;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; a program that calculate the distance point
; to origin (0,0) formula

; constants
(define x 3)
(define y 4)

; functions
(define (distance-to-origin x y)
  (sqrt (+ (sqr x) (sqr y ))))

; execution
(distance-to-origin x y) ; 5
