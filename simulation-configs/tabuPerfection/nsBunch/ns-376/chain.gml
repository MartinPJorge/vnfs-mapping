graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 12
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
    disk 4
    cpu 1
    memory 3
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 5
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 82
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 153
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 144
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 200
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 84
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 71
  ]
]
