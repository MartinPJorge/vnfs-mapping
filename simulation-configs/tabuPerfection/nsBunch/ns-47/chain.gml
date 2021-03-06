graph [
  node [
    id 0
    label 1
    disk 1
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 1
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 15
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 2
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
    disk 9
    cpu 3
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 62
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 63
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 178
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 101
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 103
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 71
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 107
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 75
  ]
]
