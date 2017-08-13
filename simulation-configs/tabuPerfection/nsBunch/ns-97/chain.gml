graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 1
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 12
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 13
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 5
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 45
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 50
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 72
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 39
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 81
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 65
  ]
]
