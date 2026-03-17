(define (problem problemazo)
    (:domain almacen)
 
    (:objects
    caja1 caja2
    a b c
    )
 
    (:init
        (robot-en a)
        (caja-en caja1)
        (caja-en caja2)
        (libre)
 
        (conectado a b)
        (conectado b a)
        (conectado b c)
        (conectado c b)
    )
    (:goal
     (and
        (caja-en caja1 a)
        (caja-en caja2 b)
     )
   
    )
 
)