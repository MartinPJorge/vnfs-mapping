graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 5
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 14
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 15
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 16
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 3
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 49
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 75
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 82
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 83
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 90
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 30
  ]
]
