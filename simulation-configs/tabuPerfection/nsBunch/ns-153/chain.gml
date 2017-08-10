graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 7
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 10
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 8
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 64
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 72
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 180
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 181
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 97
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 61
  ]
]
