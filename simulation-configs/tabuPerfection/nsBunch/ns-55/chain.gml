graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 7
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 8
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 1
    memory 11
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 7
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 100
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 44
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 91
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 45
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 43
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 63
  ]
]
