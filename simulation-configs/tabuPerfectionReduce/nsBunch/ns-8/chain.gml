graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 6
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 1
    memory 1
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 148
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 142
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 110
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 61
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 87
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 82
  ]
]
