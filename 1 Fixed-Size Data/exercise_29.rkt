;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_29) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; constants
(define VARIABLE-COST 1.50)
(define PRICE-ATTENDANCE (/ 15 0.1))

; function
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

; aux functions
(define (attendees ticket-price)
  (- 120 (* (- ticket-price 5.0) PRICE-ATTENDANCE)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* VARIABLE-COST (attendees ticket-price)))

; testing
(profit 3)
(profit 4)
(profit 5)