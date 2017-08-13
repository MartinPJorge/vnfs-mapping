graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 3
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 7
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 5
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 33
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 43
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 87
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 75
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 23
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 72
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 73
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 64
  ]
]
