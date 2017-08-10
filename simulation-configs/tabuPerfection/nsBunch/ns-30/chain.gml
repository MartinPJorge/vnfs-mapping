graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 13
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 6
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
    disk 2
    cpu 1
    memory 9
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 58
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 168
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 115
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 98
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 77
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 138
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 176
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 135
  ]
]
