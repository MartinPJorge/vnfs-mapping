graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 15
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 1
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 1
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 118
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 130
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 97
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 160
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 172
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 140
  ]
]
