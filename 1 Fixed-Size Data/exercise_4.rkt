;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; a program that deletes the ith position from string

; constants
(define str "helloworld")
(define i 5)

; function
(define (delete-ith-char str i)
  (string-append (substring str 0 i)
                 (substring str (+ i 1) (string-length str))))

; execution
(delete-ith-char str i)

