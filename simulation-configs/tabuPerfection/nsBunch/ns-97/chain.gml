graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 16
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 3
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 94
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 61
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 20
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 69
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 62
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 38
  ]
]
