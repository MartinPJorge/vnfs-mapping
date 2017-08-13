graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 8
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 13
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 3
    memory 8
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 1
    memory 4
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
    delay 29
    bw 116
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 67
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 185
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 151
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 72
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 181
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 151
  ]
]
