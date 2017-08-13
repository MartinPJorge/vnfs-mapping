graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 4
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 2
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 81
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 27
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 64
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 70
  ]
  edge [
    source 1
    target 5
    delay 27
    bw 26
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 24
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 57
  ]
]
