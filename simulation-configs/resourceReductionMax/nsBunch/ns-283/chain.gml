graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 4
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 5
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 1
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 16
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 114
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 55
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 58
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 76
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 110
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 185
  ]
]
