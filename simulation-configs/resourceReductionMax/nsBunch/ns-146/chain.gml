graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 3
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 5
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 15
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 4
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 89
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 112
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 87
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 115
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 108
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 147
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 93
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 140
  ]
]
