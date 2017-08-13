graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 8
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 4
    memory 12
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 95
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 24
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 34
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 93
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 57
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 60
  ]
]
