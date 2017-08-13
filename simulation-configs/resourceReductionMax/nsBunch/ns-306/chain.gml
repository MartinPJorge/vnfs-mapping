graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 12
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 12
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 104
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 69
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 112
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 75
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 129
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 52
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 192
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 76
  ]
]
