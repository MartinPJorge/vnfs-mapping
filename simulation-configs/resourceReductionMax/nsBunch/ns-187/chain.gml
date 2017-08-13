graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 9
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 4
    memory 3
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 16
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
    delay 26
    bw 71
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 126
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 92
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 69
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 124
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 96
  ]
]
