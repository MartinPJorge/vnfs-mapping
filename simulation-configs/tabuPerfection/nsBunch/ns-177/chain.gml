graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 10
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 2
    memory 4
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 6
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 79
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 67
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 76
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 91
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 69
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 71
  ]
]
