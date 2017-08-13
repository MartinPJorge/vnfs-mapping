graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 5
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 6
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 12
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 43
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 63
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 32
  ]
  edge [
    source 1
    target 5
    delay 35
    bw 58
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 91
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 48
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 81
  ]
]
