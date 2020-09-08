;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname homework1_27) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;flatten returns list of all symbols in order in which they occur

;(define flatten
 ; (lambda (lst)
  ;  (cond
   ;   ((null? lst) (checkEmpty lst'())
    ;  ((list? (car lst)) (if (checkEmpty (car lst))
     ;                        (flatten (car lst))
      ;                       (flatten (car (cdr (cdr lst))))))
      ;((symbol? (car lst)) (cons (car lst) (flatten (cdr lst))))
      ;(else (flatten (cdr lst)))))))  

(define flatten
  (lambda (slist)
    (cond ((null? slist) '())        ;if given list is empty, resolve to '()
          ((symbol? (car slist)) (cons (car slist) (flatten (cdr slist)))) ;cons the first element with the flatten of everything else
          (else (append (flatten (car slist)) (flatten (cdr slist))))))) ;when given list neither resolves in '() nor has a symbol in front





(flatten '(a () b c))
(flatten '((a) () (b () d) () (c))) 

