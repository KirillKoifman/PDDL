(define (domain Nenuphars)

  (:requirements :strips :typing)

  (:types 
        place physobj player - object
        obstacle equipable - physobj
        nenuphar - place
        bonus swampflower - equipable
        thorns - obstacle
        scissors fishrod - bonus
  )

  (:predicates 	
    (in-pl ?pl - player ?loc - nenuphar)
    (is-obs ?obs - obstacle ?loc - nenuphar)
    (at ?eq - equipable ?loc - nenuphar)
    (keep-flower)
    (keep-scissors)
    (keep-fishrod)
    (connected ?con1 - nenuphar ?con2 - nenuphar)
  )
  
  (:action CutThorns
    :parameters (?pl - player ?loc-from - nenuphar ?loc-to - nenuphar ?obs - thorns)
    :precondition (and (or (connected ?loc-from ?loc-to) (connected ?loc-to ?loc-from)) (in-pl ?pl ?loc-from) (is-obs ?obs ?loc-to) (keep-scissors))
    :effect (not (is-obs ?obs ?loc-to))
  )
  
  (:action MakeASuperJump
    :parameters (?pl - player ?loc-from - nenuphar ?loc-to - nenuphar ?obs - thorns)
    :precondition (and (in-pl ?pl ?loc-from) (not (is-obs ?obs ?loc-to)) (keep-fishrod))
    :effect (and (not (in-pl ?pl ?loc-from)) (in-pl ?pl ?loc-to))
  )
  
  (:action JumpToAnotherNenuphar
    :parameters (?pl - player ?loc-from - nenuphar ?loc-to - nenuphar ?obs - thorns)
    :precondition (and (or (connected ?loc-from ?loc-to) (connected ?loc-to ?loc-from)) (in-pl ?pl ?loc-from) (not (is-obs ?obs ?loc-to)))
    :effect (and (not (in-pl ?pl ?loc-from)) (in-pl ?pl ?loc-to))
  )
  
  (:action TakeSwampFlower
    :parameters (?pl - player ?loc - nenuphar ?eq - swampflower ?obs - thorns)
    :precondition (and (in-pl ?pl ?loc) (not (keep-flower)) (at ?eq ?loc) (not (is-obs ?obs ?loc)))
    :effect (and (keep-flower) (not (at ?eq ?loc)))
  )
  
  (:action PutSwampFlower
    :parameters (?pl - player ?loc - nenuphar ?eq - swampflower ?obs - thorns)
    :precondition (and (in-pl ?pl ?loc) (keep-flower) (not (at ?eq ?loc)) (not (is-obs ?obs ?loc)))
    :effect (and (not (keep-flower)) (at ?eq ?loc))
  )
  
  (:action EquipScissors
    :parameters (?pl - player ?loc - nenuphar ?eq - scissors)
    :precondition (and (in-pl ?pl ?loc) (at ?eq ?loc))
    :effect (and (not (at ?eq ?loc)) (keep-scissors) (not (keep-fishrod)))
  )
  
  (:action EquipFishrod
    :parameters (?pl - player ?loc - nenuphar ?eq - fishrod)
    :precondition (and (in-pl ?pl ?loc) (at ?eq ?loc))
    :effect (and (not (at ?eq ?loc)) (keep-fishrod) (not (keep-scissors)))
  )
)

