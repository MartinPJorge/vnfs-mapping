graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 7
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 7
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 16
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 1
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 40
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 95
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 66
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 35
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 88
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 77
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 73
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 71
  ]
]
