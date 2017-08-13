graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 4
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 10
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 64
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 39
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 76
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 62
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 22
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 76
  ]
]
