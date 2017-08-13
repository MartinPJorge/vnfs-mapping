graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 15
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 9
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 11
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 5
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 12
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 59
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 60
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 36
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 68
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 64
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 86
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 81
  ]
]
