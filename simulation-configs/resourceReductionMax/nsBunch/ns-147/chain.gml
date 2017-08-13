graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 5
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
    disk 10
    cpu 4
    memory 10
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 12
  ]
  node [
    id 5
    label 6
    disk 5
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
    delay 29
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 72
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 53
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 190
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 114
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 99
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 66
  ]
]
