;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_36) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Image -> Number
; counts the number of pixels in a given image
; (width * height)
; given: (rectangle 10 15 "solid" "black")
; expect: 150
; given: (circle 3 "outline" "black")
; expect: 36
(require 2htdp/image)

(define (img-pxls img)
  (* (image-width img)
     (image-height img)))

; testing
; (img-pxls (rectangle 10 15 "solid" "black"))
; (img-pxls (circle 3 "outline" "black"))
