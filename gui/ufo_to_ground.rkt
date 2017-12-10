;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ufo_to_ground) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; constants
(define SCENE-WIDTH 100)
(define SCENE-HEIGHT 100)
(define WIDTH-CENTER (/ SCENE-WIDTH 2))
(define V 1.5) ; velocity in pixels per clock tick

; graphical constants
(define GROUND
  (rectangle SCENE-WIDTH 5 "solid" "brown"))

(define SKY
  (rectangle SCENE-WIDTH SCENE-HEIGHT "solid" "black"))

(define SKY-GROUND
  (place-image GROUND
               (/ SCENE-WIDTH 2)
               (- SCENE-HEIGHT (/ (image-height GROUND) 2))
               SKY))

(define SCENE
  (overlay SKY-GROUND
           (empty-scene SCENE-WIDTH SCENE-HEIGHT)))

(define UFO (overlay (circle 10 "solid" "green")
                     (rectangle 40 4 "solid" "green")))

(define UFO-TO-GROUND
  (- (- SCENE-HEIGHT (/ (image-height UFO) 2))
     (image-height GROUND))) 

; functions
(define (distance t)
  (* V t))

(define (picture-of-ufo t)
  (cond
    [(<= (distance t) UFO-TO-GROUND)
     (place-image UFO
                  WIDTH-CENTER (distance t)
                  SCENE)]
    [(> (distance t) UFO-TO-GROUND)
     (place-image UFO
                  WIDTH-CENTER UFO-TO-GROUND
                  SCENE)]))

; excecution
(animate picture-of-ufo)