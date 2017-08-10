graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 3
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 11
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 12
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 13
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 165
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 181
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 118
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 62
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 69
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 113
  ]
]