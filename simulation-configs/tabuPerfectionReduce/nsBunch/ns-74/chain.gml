graph [
  node [
    id 0
    label 1
    disk 7
    cpu 3
    memory 9
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 5
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 64
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 160
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 185
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 116
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 83
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 182
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 197
  ]
]
