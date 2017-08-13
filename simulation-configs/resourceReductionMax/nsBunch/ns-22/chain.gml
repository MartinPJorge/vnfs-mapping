graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 15
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 2
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 8
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 2
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
    delay 26
    bw 116
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 156
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 162
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 77
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 195
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 85
  ]
]
