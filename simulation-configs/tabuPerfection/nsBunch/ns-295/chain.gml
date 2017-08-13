graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 12
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 3
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 16
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 83
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 68
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 90
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 34
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 79
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 22
  ]
]
