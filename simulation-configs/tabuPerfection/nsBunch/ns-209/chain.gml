graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 6
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 4
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 5
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 3
    memory 7
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 4
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 140
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 57
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 58
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 97
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 102
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 115
  ]
]
