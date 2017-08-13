graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 5
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 12
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 3
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
    bw 36
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 73
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 61
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 56
  ]
  edge [
    source 1
    target 5
    delay 27
    bw 48
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 82
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 79
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 72
  ]
]
