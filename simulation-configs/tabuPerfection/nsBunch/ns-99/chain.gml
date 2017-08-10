graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 15
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 2
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 3
    memory 10
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 84
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 128
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 112
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 66
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 74
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 70
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 67
  ]
]