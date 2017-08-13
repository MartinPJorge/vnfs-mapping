graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 3
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 14
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 12
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 74
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 77
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 64
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 77
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 178
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 68
  ]
]
