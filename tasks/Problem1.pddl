(define (problem p01)
  (:domain Nenuphars)

  (:objects
    player1 - player
    n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 - nenuphar
    scissorsbonus - scissors
    fishrodbonus - fishrod
    thorns - thorns
    flower1 flower2 flower3 flower4 - swampflower
  )

  (:init
    (connected n1 n2)
    (connected n1 n7)
    (connected n2 n3)
    (connected n2 n8)
    (connected n3 n4)
    (connected n3 n9)
    (connected n4 n5)
    (connected n4 n10)
    (connected n5 n6)
    (connected n5 n11)
    (connected n6 n12)
    (connected n7 n8)
    (connected n7 n13)
    (connected n8 n9)
    (connected n8 n14)
    (connected n9 n10)
    (connected n9 n15)
    (connected n10 n11)
    (connected n10 n16)
    (connected n11 n12)
    (connected n11 n17)
    (connected n12 n18)
    (connected n13 n14)
    (connected n13 n19)
    (connected n14 n15)
    (connected n14 n20)
    (connected n15 n16)
    (connected n15 n21)
    (connected n16 n17)
    (connected n16 n22)
    (connected n17 n18)
    (connected n17 n23)
    (connected n18 n24)
    (connected n19 n20)
    (connected n19 n25)
    (connected n20 n21)
    (connected n20 n26)
    (connected n21 n22)
    (connected n21 n27)
    (connected n22 n23)
    (connected n22 n28)
    (connected n23 n24)
    (connected n23 n29)
    (connected n24 n30)
    (connected n25 n26)
    (connected n25 n31)
    (connected n26 n27)
    (connected n26 n32)
    (connected n27 n28)
    (connected n27 n33)
    (connected n28 n29)
    (connected n28 n34)
    (connected n29 n30)
    (connected n29 n35)
    (connected n30 n36)
    (connected n31 n32)
    (connected n32 n33)
    (connected n33 n34)
    (connected n34 n35)
    (connected n35 n36)
    
    
    (in-pl player1 n2)
    
    (at flower1 n5)
    (at flower2 n27)
    (at flower3 n15)
    (at flower4 n9)
    
    (at scissorsbonus n16)
    (at scissorsbonus n29)
    (at fishrodbonus n5)
    
    
    (is-obs thorns n4)
    (is-obs thorns n25)
    (is-obs thorns n14)
    (is-obs thorns n26)
    (is-obs thorns n30)
    (is-obs thorns n12)
    
  )

  (:goal (and (at flower1 n26) (at flower2 n35) (at flower3 n2) (at flower4 n17)))
)
