graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 8
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 84
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 27
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 55
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 56
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 91
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 38
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 81
  ]
]
