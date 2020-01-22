(define (square x) (* x x))
(define mod remainder)
(define (expt-mod x n modulus)
  (define (iter base exp acc)
    (cond ((= exp 0) 
        (mod (* base acc) modulus))
      ((= exp 1) 
        (mod (* base acc) modulus))
      ((even? exp)
        (iter (mod (square base) modulus) (/ exp 2) acc))
      (else 
        (iter base (- exp 1) (mod (* base acc) modulus)))))
    (iter x n 1))

(define (miller-rabin n)
  (define (m-r-exptmod base exp modulus)
    (cond ((= 0 exp) 1)
      ((even? exp) 
        (mod 
          (m-r-square (m-r-exptmod base (/ exp 2) modulus)) 
          modulus))
        (else 
          (mod 
            (* base (m-r-exptmod base (- exp 1) modulus))
            modulus))))
  (define (m-r-square x)
    (cond ((or (= x 1) (= x (- n 1)))
        (square x))
      ((= 1 (mod (square x) n))
        0)
      (else (square x))
    ))
  (define (test a)
    (= (m-r-exptmod a (- n 1) n) 1))
  (test (+ 1 (random-integer (- n 1)))))

;; A function to test for primes using miller-rabin. times=256 should be more than sufficient
(define (fast-mr-prime n times)
  (if (>= 0 times)
      #t
    (and (miller-rabin n) (fast-mr-prime n (- times 1)))))

(define (run x)
    (if (fast-mr-prime x 256)
        (begin (display x)
            (display " is prime")
            #t)
        (begin (display x)
            (display " is not prime")
            #f)
            ))

; (run 222)
(run (string->number (car (command-line))))
