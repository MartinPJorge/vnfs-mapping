graph [
  node [
    id 0
    label 1
    disk 10
    cpu 2
    memory 14
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 3
    memory 1
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 13
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 15
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 197
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 73
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 135
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 87
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 81
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 69
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 143
  ]
]
