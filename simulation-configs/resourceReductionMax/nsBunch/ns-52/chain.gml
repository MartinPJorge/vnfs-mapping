graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 5
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 2
    memory 15
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 10
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 6
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
    bw 196
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 161
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 93
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 68
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 88
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 138
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 95
  ]
]
