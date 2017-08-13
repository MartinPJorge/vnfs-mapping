graph [
  node [
    id 0
    label 1
    disk 7
    cpu 3
    memory 7
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 2
    memory 8
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 12
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 13
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 14
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 3
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 94
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 76
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 56
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 82
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 81
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 78
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 27
  ]
]
