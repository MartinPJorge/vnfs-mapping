graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 6
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 14
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 2
    memory 16
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 140
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 133
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 92
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 186
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 95
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 147
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 104
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 171
  ]
]
