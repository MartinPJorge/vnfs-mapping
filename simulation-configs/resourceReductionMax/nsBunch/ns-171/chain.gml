graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 6
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 2
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 98
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 61
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 64
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 129
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 147
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 79
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 116
  ]
]
