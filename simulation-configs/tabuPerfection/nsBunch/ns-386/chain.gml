graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 13
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 16
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 1
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
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
    bw 93
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 62
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 22
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 28
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 57
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 46
  ]
]
