graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 8
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 6
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 13
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 81
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 117
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 147
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 169
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 76
  ]
]
