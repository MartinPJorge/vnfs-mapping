graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 1
    memory 1
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 7
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 1
    memory 4
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
    disk 2
    cpu 4
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
    bw 102
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 168
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 122
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 86
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 162
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 142
  ]
]
