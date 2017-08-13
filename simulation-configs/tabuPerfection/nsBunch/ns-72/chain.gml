graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 4
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 11
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 3
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 43
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 82
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 96
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 67
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 74
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 67
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 21
  ]
]
