graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 13
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 7
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 7
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 72
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 71
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 76
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 43
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 52
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 29
  ]
]
