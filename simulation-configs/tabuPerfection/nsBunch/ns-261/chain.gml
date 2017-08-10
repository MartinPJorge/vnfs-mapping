graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 15
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 8
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 3
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 89
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 198
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 66
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 171
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 103
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 110
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 154
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 116
  ]
]