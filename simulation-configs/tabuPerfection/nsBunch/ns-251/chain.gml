graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 14
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 15
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 16
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
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
    bw 135
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 189
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 183
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 83
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 82
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 193
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 144
  ]
]
