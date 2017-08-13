graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 2
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 10
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 6
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 3
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 63
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 81
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 93
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 187
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 170
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 71
  ]
]
