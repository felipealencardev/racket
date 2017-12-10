;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; a program that counts the number of pixels in the image

(require 2htdp/image)

; constants

; functions
(define (img-width img)
  (image-width img))

(define (img-height img)
  (image-height img))

(define (img-pxls img)
  (* (img-width img) (img-height img)))

; testing
(img-width (triangle 50 "solid" "black"))
(img-height (triangle 50 "solid" "black"))
(img-pxls (triangle 50 "solid" "black")) 