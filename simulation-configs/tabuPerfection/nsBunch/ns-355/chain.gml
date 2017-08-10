graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 7
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 9
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 4
    memory 16
  ]
  node [
    id 5
    label 6
    disk 1
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
    delay 33
    bw 165
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 72
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 193
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 110
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 105
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 93
  ]
]