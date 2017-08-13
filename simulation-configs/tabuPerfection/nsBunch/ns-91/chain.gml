graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 11
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 7
  ]
  node [
    id 5
    label 6
    disk 9
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
    delay 28
    bw 34
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 62
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 64
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 93
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 93
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 28
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 74
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 35
  ]
]
