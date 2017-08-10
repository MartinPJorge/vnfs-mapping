graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 11
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 8
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 12
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 1
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 3
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 148
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 83
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 62
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 177
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 74
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 136
  ]
]
