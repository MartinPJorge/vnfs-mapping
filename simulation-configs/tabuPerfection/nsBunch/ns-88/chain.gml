graph [
  node [
    id 0
    label 1
    disk 5
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 11
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 11
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 74
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 88
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 64
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 38
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 73
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 93
  ]
]
