graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 6
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 7
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 6
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 4
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 13
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 3
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 139
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 119
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 79
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 182
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 183
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 63
  ]
]
