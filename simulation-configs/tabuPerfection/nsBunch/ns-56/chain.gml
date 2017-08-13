graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 14
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 15
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 13
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 10
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 3
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 48
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 54
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 66
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 73
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 82
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 86
  ]
]
