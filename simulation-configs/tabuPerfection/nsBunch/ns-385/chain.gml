graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 4
    memory 14
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 11
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 3
    memory 15
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 79
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 33
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 76
  ]
  edge [
    source 1
    target 5
    delay 25
    bw 55
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 42
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 46
  ]
]
