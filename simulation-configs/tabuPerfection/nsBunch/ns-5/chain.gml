graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 13
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 6
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 15
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 83
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 68
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 191
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 66
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 100
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 192
  ]
]
