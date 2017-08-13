graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 4
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 5
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 3
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 134
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 101
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 186
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 71
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 161
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 59
  ]
]
