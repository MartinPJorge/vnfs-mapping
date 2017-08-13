graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 13
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 7
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 47
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 94
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 72
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 32
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 97
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 61
  ]
]
