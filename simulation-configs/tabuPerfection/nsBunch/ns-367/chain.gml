graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 4
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 10
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 15
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 1
    memory 4
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 53
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 57
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 72
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 32
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 58
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 53
  ]
]
