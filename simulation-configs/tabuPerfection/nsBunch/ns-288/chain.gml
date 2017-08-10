graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 3
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 3
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 12
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 15
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
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
    bw 90
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 101
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 126
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 140
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 139
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 72
  ]
]
