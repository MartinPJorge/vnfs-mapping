graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 2
    memory 15
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 1
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 133
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 179
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 71
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 123
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 160
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 91
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 121
  ]
]
