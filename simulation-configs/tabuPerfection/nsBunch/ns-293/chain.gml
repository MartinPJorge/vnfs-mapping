graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 2
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 4
    memory 5
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 1
    memory 12
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 4
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 196
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 123
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 148
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 90
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 71
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 66
  ]
]
