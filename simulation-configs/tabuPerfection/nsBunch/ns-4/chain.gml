graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 6
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 8
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 15
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 124
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 81
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 61
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 153
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 191
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 136
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 153
  ]
]