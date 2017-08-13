graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 8
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 4
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 5
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 10
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
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
    bw 80
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 61
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 32
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 40
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 74
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 24
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 92
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 72
  ]
]
