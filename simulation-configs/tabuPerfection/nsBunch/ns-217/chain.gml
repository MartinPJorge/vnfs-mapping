graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 15
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 7
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 16
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 92
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 181
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 77
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 195
  ]
  edge [
    source 1
    target 5
    delay 28
    bw 144
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 91
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 182
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 145
  ]
]