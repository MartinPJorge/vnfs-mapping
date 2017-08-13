graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 8
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 4
    memory 1
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 10
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 8
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 3
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 192
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 140
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 93
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 150
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 51
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 127
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 95
  ]
]
