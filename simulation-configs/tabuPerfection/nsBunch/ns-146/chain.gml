graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 8
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 15
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 15
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
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
    bw 73
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 79
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 99
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 51
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 48
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 70
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 76
  ]
]
