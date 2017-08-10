graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 4
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 1
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 14
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 14
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 1
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 172
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 112
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 76
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 186
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 56
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 84
  ]
]
