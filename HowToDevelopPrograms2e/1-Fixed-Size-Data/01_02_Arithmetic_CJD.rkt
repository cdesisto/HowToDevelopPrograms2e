;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01_02_Arithmetic_CJD) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;Chapter 2 - Functions and programs

; 2.1 - 

(define (f x) 1)

(define (ff a)
  (* 10 a))

;Exercise 11

(define (distance x y)
  (sqrt (+ (sqr x) (sqr y))))

(distance 3 4) ;=>5

;Exercise 12

;;Define volume of a cylinder
(define (cyvolume r h)
  (* pi (sqr r) h))

;Define volume of a cube
(define (cvolume a)
  (* a a a))

;Exerceise 13

(define (string-first texty)
  (string-ith texty 0))

(string-first "yes")

(check-expect (string-first "Hellz") "H")

;Exercise 14

(define (string-last texty)
  (substring texty (- (string-length texty) 1) (string-length texty)))

(check-expect (string-last "hello") "o")

;Excercise 15

(define (==> sunny friday)
  (or (not sunny) friday))

(check-expect (==> #false #true) #true)

;Exercise 16

(define (image-area picture)
  (* (image-width picture) (image-height picture)))

(check-expect (image-area (rectangle 5 5 "solid" "black")) 25)

;Exercise 17

(define (image-classify picture)
  (if (> (image-width picture) (image-height picture))
      "Wide"
      (if (= (image-width picture) (image-height picture))
          "Square"
          "Tall")))

(check-expect (image-classify (rectangle 5 5 "solid" "black")) "Square")

;Exercise 18

(define (string-join prefix suffix)
  (string-append prefix "_" suffix))

(define prefix "Holy")
(define suffix "Cow")
(check-expect (string-join prefix suffix) "Holy_Cow")

;Excercise 19

(define (string-insert str i)
  (string-append (substring str 0 i) "_" (substring str i)))
  
(define i 3)
(check-expect (string-insert "hello" i) "hel_lo")

;Exercise 20

(define (string-delete str i)
  (string-append (substring str 0 i) (substring str (+ i 1))))

(check-expect (string-delete "hello" i) "helo")

  
  

  
  