graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 15
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 3
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 10
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 15
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 15
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 171
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 108
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 72
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 118
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 163
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 136
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 86
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 90
  ]
]
