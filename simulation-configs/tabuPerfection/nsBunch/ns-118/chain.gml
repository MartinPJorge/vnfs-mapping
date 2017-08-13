graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 9
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 1
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 7
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
    delay 26
    bw 66
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 87
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 95
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 100
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 58
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 100
  ]
]
