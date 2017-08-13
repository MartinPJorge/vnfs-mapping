graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 1
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 8
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 4
    memory 15
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 65
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 93
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 114
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 95
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 99
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 60
  ]
]
