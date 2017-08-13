graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 9
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 16
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 34
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 73
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 58
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 100
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 77
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 80
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 94
  ]
]
