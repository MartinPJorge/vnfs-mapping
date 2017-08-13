graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 13
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 11
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 10
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 1
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 72
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 52
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 150
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 98
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 185
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 181
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 77
  ]
]
