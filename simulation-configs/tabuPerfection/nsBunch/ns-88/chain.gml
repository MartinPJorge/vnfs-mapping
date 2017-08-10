graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 16
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 3
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 5
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 194
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 107
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 96
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 151
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 52
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 77
  ]
]
