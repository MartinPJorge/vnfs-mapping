graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 16
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 72
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 95
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 100
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 36
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 86
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 48
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 54
  ]
]
