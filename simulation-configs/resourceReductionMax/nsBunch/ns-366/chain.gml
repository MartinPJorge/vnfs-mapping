graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 14
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 2
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 13
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 5
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 63
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 195
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 93
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 199
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 174
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 141
  ]
]
