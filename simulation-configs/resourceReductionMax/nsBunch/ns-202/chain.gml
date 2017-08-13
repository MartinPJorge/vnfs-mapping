graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 10
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 7
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 9
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 2
    memory 15
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 10
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 194
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 69
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 127
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 71
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 149
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 87
  ]
]
