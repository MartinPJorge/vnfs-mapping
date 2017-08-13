graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 13
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 2
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 12
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 12
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 80
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 72
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 83
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 193
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 65
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 156
  ]
]
