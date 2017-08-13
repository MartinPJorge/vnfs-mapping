graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 14
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 16
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 2
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 35
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 43
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 64
  ]
  edge [
    source 1
    target 5
    delay 27
    bw 45
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 43
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 77
  ]
]
