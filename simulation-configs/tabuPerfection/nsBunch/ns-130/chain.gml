graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 10
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 12
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 140
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 59
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 107
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 77
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 63
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 139
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 63
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 143
  ]
]