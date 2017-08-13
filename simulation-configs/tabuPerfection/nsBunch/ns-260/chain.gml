graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 6
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 15
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 5
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 2
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
    delay 25
    bw 72
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 50
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 71
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 76
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 88
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 38
  ]
]
