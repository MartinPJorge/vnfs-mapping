graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 5
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 1
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 7
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 2
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 64
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 86
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 59
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 96
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 22
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 60
  ]
]
