;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_16) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; function image-area that counts the number of pixels
; in a image

(require 2htdp/image)

; function
(define (image-area img)
  (* (image-width img) (image-height img)))

; testing
(image-area (triangle 50 "solid" "black")) 