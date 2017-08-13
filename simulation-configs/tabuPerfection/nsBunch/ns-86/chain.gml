graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 5
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 3
    memory 5
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 44
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 59
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 27
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 73
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 37
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 71
  ]
]
