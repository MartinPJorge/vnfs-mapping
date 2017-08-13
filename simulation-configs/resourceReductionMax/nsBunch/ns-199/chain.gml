graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 12
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 1
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 6
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 13
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 86
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 116
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 78
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 194
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 119
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 68
  ]
]
