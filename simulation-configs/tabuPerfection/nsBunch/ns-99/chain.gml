graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 9
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 12
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 9
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 15
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 82
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 24
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 27
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 56
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 66
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 63
  ]
]
