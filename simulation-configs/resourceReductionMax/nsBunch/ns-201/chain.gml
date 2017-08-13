graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 4
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 16
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 7
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 2
    memory 9
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 199
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 185
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 118
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 59
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 54
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 175
  ]
]
