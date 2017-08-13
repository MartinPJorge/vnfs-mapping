graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 4
    memory 6
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 12
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 14
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 67
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 186
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 129
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 51
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 104
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 92
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 53
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 134
  ]
]
