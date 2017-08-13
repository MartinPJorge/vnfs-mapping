graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 4
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 4
    memory 3
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 2
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 26
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 79
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 64
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 51
  ]
  edge [
    source 1
    target 5
    delay 33
    bw 82
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 87
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 32
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 76
  ]
]
