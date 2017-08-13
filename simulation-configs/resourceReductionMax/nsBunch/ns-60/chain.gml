graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 3
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 6
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 84
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 160
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 77
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 71
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 174
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 136
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 72
  ]
]
