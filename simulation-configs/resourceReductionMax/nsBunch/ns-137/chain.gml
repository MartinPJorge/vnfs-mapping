graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 11
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 13
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 16
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
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
    bw 103
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 129
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 132
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 181
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 196
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 71
  ]
]
