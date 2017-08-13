graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 1
    memory 11
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 8
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 10
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 85
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 75
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 98
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 77
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 53
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 69
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 29
  ]
]
