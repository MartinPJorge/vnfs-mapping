graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 12
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 3
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 88
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 76
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 77
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 96
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 27
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 73
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 58
  ]
]
