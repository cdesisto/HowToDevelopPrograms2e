;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 02_02_Computing_CJD) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; 2.2 - Computing

(define (ff a)
  (* 10 a))

(ff (+ 1 1))

;Exercise 21

(ff (ff 1))

(+ (ff 1) (ff 1))

;Does DrRacket's stepper reuse the results of computations? =>No

;Exercise 22

(define (distance-to-origin x y)
  (sqrt (+ (sqr x) (sqr y))))

(distance-to-origin 3 4)

;Exercise 23

(define (string-first s)
  (substring s 0 1))

(string-first "hello world")

;Exercise 24

(define (==> x y)
  (or (not x) y))

(==> #true #false) ;=> #false

;Excerise 25

(define (image-classify img)
  (cond
    [(>= (image-height img) (image-width img))
     "tall"]
    [(= (image-height img) (image-width img))
     "square"]
    [(<= (image-height img) (image-width img))
     "wide"]))

(image-classify (circle 3 "solid" "red"))

;Classifies as 'tall,' by stepping you see that you should not use >= first if there are more confining conditions that can go first

;Exercise 26

(define (string-insert s i)
  (string-append (substring s 0 i)
                 "_"
                 (substring s i)))

(string-insert "helloworld" 6)
  