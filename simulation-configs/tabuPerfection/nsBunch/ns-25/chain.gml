graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 8
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 12
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 5
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 21
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 72
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 89
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 87
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 99
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 64
  ]
]
