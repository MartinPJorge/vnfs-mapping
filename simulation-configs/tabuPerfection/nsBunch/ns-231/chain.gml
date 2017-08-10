graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 3
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 3
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 3
    memory 9
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 16
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 64
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 176
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 193
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 132
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 161
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 131
  ]
]