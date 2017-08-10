graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 13
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 8
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
    delay 33
    bw 104
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 67
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 69
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 103
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 188
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 177
  ]
]