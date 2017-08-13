graph [
  node [
    id 0
    label 1
    disk 5
    cpu 1
    memory 2
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 3
    memory 1
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 11
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 148
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 60
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 108
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 87
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 56
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 118
  ]
]
