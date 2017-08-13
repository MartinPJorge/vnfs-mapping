graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 3
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 1
    memory 12
  ]
  node [
    id 5
    label 6
    disk 8
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
    delay 35
    bw 35
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 48
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 23
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 67
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 84
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 95
  ]
]
