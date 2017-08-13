graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 7
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 11
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 7
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 3
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 151
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 145
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 74
  ]
  edge [
    source 0
    target 3
    delay 34
    bw 90
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 136
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 110
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 121
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 67
  ]
]
