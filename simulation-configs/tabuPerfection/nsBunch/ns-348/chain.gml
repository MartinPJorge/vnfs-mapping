graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 15
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 1
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 12
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 9
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 115
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 122
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 71
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 122
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 84
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 78
  ]
]
