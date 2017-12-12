;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; a program that calculate the distance point
; to origin (0,0) formula

; function
(define (distance-to-origin x y)
  (sqrt (+ (sqr x) (sqr y ))))

; execution
(distance-to-origin 3 4) ; 5
(distance-to-origin 1 0) ; 1
(distance-to-origin 5 5) ; i7.07