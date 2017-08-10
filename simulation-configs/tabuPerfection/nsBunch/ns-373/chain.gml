graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 2
    memory 1
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 15
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 2
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 98
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 165
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 199
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 96
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 107
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 144
  ]
]
