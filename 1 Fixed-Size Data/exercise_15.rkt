;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_15) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; define the logical implication operator

; function
(define (==> x y)
  (or (not x) y))
       
; tests
(==> #true #true)   ; true
(==> #false #true)  ; true
(==> #true #false)  ; false
(==> #false #false) ; true