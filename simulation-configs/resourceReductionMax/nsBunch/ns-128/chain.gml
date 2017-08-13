graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 15
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 9
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 4
    memory 10
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 64
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 166
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 70
  ]
  edge [
    source 0
    target 3
    delay 31
    bw 141
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 134
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 91
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 149
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 135
  ]
]
