graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 6
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 2
    memory 15
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 12
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 16
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 13
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 108
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 134
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 94
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 73
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 178
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 127
  ]
]
