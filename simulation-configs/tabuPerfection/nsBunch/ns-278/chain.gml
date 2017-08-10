graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 11
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 1
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 16
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 3
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 195
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 196
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 86
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 82
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 82
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 51
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 108
  ]
]
