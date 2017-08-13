graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 11
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 2
    memory 9
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 91
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 90
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 53
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 77
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 50
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 85
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 21
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 69
  ]
]
