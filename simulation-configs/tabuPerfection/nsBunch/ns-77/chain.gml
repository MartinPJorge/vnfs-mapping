graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 5
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 6
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 97
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 73
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 56
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 22
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 68
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 73
  ]
]
