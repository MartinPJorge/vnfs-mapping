graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 7
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 10
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 28
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 63
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 66
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 67
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 84
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 96
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 82
  ]
]
