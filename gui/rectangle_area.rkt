;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rectangle_area) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;;calculate the rectangle area
(define (rectangle-area rec) (* (image-width rec)
                                (image-height rec))) 

;;examples
(rectangle-area (rectangle 40 50 "solid" "black")) ;;2000 
(rectangle-area (rectangle 12 6 "solid" "black")) ;;72
(rectangle-area (rectangle 25 5 "solid" "black")) ;;125