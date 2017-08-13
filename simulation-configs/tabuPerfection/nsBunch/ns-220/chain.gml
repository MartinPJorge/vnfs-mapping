graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 2
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 2
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 4
    memory 5
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 4
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 3
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 124
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 184
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 75
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 59
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 117
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 133
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 101
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 68
  ]
]
