;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_40) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; constants
(define WHEEL-RADIUS 5)

(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))

(define SPACE
  (rectangle (* 4 WHEEL-RADIUS) WHEEL-RADIUS "solid" "white"))

(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))

(define MIDDLE
  (rectangle (* (image-width BOTH-WHEELS) 1.3)
             (* WHEEL-RADIUS 2)
             "solid"
             "red"))
(define MIDDLE-WHEELS
  (overlay/offset BOTH-WHEELS
                  0
                  (- WHEEL-RADIUS)
                  MIDDLE))

(define TOP
  (rectangle (* 6 WHEEL-RADIUS)
             WHEEL-RADIUS
             "solid"
             "red"))

(define CAR
  (above TOP MIDDLE-WHEELS))

(define WORLD-WIDTH 200)

(define BACKGROUND
  (empty-scene WORLD-WIDTH
               (+ (image-height CAR) WHEEL-RADIUS)))

(define Y-CAR 15)

; functions

; WorldState -> Image
; places the car into the BACKGROUND scene,
; according to the giver world state
(define (render ws)
  (place-image CAR ws Y-CAR BACKGROUND))

; WorldState -> WorldState
; move the car right
(define (clock-tick-handler cw)
  (+ cw 3))

; WorldState String -> WorldState
; move the car left when stroke a key
(define (keystroke-handler cw ke)
  0)

; WorldState Number Number String -> WorldState
; places the car at x-mouse
(define (mouse-event-handler cw x y me)
  x)

; WorldState -> Boolean
; end the world state when the car position = WORLD-WIDTH
(define (end? cw)
  (> cw WORLD-WIDTH))

(define (main ws)
  (big-bang ws
    [on-tick clock-tick-handler]
    [to-draw render]
    [on-key keystroke-handler]
    [on-mouse mouse-event-handler]
    [stop-when end?]))

; testing
(main 10)
