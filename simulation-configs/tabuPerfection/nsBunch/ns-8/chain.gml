graph [
  node [
    id 0
    label 1
    disk 10
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 12
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 2
    memory 12
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 181
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 185
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 149
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 141
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 105
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 63
  ]
]
