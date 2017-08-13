graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 4
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 9
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 4
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
    disk 2
    cpu 4
    memory 4
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 179
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 73
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 124
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 191
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 187
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 132
  ]
]
