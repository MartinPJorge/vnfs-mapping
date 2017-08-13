graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 3
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 4
    memory 10
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 7
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 13
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 58
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 65
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 76
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 23
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 72
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 49
  ]
]
