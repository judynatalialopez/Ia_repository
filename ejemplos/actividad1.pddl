(define (domain almacen)
    (:requirements :strips)
    (:predicates
        (robot-en ?l)
        (caja-en ?c ?l)
        (libre)
        (cargando ?c)
        (conectado ?a ?b)
    )
 
    (:action mover 
        :parameters (?origen ?destino)
        :precondition (and
          (robot-en ?origen)
          (conectado ?origen ?destino)
                )
          :effect  (and
          (not (robot-en ?origen))
          (robot-en ?destino)
        )
 
    )     
        (:action recoger
        :parameters (?caja ?lugar)
        :precondition(and
            (robot-en ?lugar)
            (caja-en ?caja ?lugar)
            (libre)
        )
        :effect (and
            (not(caja-en ?caja ?lugar))
            (not(libre))
            (cargando ?caja)
        )
    )
 
    (:action soltar
        :parameters (?caja ?lugar)
        :precondition(and
            (robot-en ?lugar)
            (cargando ?caja)
        )
        :effect (and
            (caja-en ?caja ?lugar)
            (libre)
            (not (cargando ?caja))
        )
    )
)