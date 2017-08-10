graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 14
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 9
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 130
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 173
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 105
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 77
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 88
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 76
  ]
]
