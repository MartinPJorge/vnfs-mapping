graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 7
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 114
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 147
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 109
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 117
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 115
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 112
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 58
  ]
]
