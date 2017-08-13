graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 1
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 7
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 13
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 50
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 71
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 20
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 43
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 75
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 84
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 45
  ]
]
