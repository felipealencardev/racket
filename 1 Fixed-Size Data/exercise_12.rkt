;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; calculate the volume and surface area of a cube

; functions
(define (cvolume s)
  (expt s 3))

(define (csurface s)
  (* (sqr s) 6))

; tests
(cvolume 3) ; 27
(cvolume 4) ; 64

(csurface 3) ; 54
(csurface 5) ; 150