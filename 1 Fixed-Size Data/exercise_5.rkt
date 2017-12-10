;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; a program that draw a simple tree

(require 2htdp/image)

; constants
(define TRUNK-WIDTH 10)
(define TRUNK-HEIGHT 30)
(define CROWN-LENGTH 50)

(define TRUNK
  (rectangle TRUNK-WIDTH TRUNK-HEIGHT "solid" "brown"))

(define CROWN
  (triangle CROWN-LENGTH "solid" "green"))

; functions
(define (tree c t)
  (above c t))

; testing
(tree CROWN TRUNK)


