graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 1
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 6
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 89
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 53
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 32
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 67
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 47
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 72
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 77
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 32
  ]
]
