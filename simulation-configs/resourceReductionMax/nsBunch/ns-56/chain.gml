graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 4
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 5
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 16
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 6
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 86
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 189
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 122
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 118
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 188
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 154
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 54
  ]
]
