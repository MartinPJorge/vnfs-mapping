graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 6
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 77
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 112
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 100
  ]
  edge [
    source 1
    target 5
    delay 26
    bw 162
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 68
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 98
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 140
  ]
]