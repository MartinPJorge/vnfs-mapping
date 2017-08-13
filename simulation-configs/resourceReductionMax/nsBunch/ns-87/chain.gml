graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 7
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
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
    delay 27
    bw 187
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 57
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 133
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 136
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 166
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 58
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 62
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 82
  ]
]
