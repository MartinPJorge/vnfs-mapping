graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 7
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 16
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 66
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 93
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 28
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 95
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 60
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 98
  ]
]
