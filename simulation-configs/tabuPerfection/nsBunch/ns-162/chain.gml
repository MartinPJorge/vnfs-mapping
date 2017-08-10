graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 12
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 4
    memory 12
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 5
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 93
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 87
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 194
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 92
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 198
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 103
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 157
  ]
]
