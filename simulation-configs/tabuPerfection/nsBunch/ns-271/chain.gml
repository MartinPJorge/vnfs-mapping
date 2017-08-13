graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 2
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 4
    memory 7
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 10
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
    delay 28
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 52
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 79
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 32
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 36
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 63
  ]
]
