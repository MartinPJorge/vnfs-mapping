graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 15
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 15
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 122
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 169
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 99
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 134
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 125
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 88
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 199
  ]
]
