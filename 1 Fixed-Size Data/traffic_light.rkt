;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname traffic_light) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; definitions

(define BACKGROUND
  (empty-scene 100 100))

(define LIGHT-SIZE 50)

(define RED-LIGHT
  (circle LIGHT-SIZE "solid" "red"))

(define YELLOW-LIGHT
  (circle LIGHT-SIZE "solid" "yellow"))

(define GREEN-LIGHT
  (circle LIGHT-SIZE "solid" "green"))

(define WORLD-STATE-TIME 1000)

; functions

; WorldState -> WorldState
; determine the timer speed
(define (light-timer l)
  (+ l 3))

; WorldState -> Boolean
; determine when the world state ends
(define (stop l)
  (> l WORLD-STATE-TIME))

; WorldState -> Image
; determine the traffic light change
(define (traffic-light l)
  (cond
    [(< 0 l (* 1/3 WORLD-STATE-TIME))
     (overlay GREEN-LIGHT BACKGROUND)]
    [(and (< (* 1/3 WORLD-STATE-TIME) l) (<= l (* 2/3 WORLD-STATE-TIME)))
     (overlay YELLOW-LIGHT BACKGROUND)]
    [else (overlay RED-LIGHT BACKGROUND)]))

(define (main l)
  (big-bang l
    [on-tick light-timer]
    [to-draw traffic-light]
    [stop-when stop]))
    
(main 0)    
       