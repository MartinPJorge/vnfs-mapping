graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 12
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 1
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 6
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 97
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 101
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 116
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 170
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 93
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 156
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 178
  ]
]
