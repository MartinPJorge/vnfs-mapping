graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 5
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 11
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 4
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 53
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 148
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 157
  ]
  edge [
    source 1
    target 5
    delay 26
    bw 193
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 134
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 78
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 112
  ]
]
