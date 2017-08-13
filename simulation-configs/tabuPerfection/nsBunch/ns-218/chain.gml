graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 8
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 6
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
    delay 35
    bw 93
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 43
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 81
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 24
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 98
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 65
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 27
  ]
]
