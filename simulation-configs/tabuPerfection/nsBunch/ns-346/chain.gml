graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 8
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 2
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 15
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 163
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 93
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 95
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 132
  ]
  edge [
    source 1
    target 5
    delay 30
    bw 87
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 156
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 188
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 76
  ]
]
