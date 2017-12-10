;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; a program that computes wheter a picture is square, tall or wide
(require 2htdp/image)

; functions
(define (img-width img)
  (image-width img))

(define (img-height img)
  (image-height img))

(define (img-lbl img)
  (cond
    [(= (img-height img) (img-width img)) "square"]
    [(> (img-height img) (img-width img)) "tall"]
    [(< (img-height img) (img-width img)) "wide"]))

; testing
(img-lbl (rectangle 10 10 "outline" "black"))
(img-lbl (rectangle 20 10 "outline" "black"))
(img-lbl (rectangle 10 20 "outline" "black"))