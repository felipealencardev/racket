;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; create an expression that computes whether sunny is false
; or friday is true

; constants
(define sunny #true)
(define friday #false)

; expression
(or (and sunny #false) (and friday #true))