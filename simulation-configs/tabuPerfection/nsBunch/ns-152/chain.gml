graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 11
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 11
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 14
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 3
    memory 7
  ]
  node [
    id 5
    label 6
    disk 9
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
    delay 31
    bw 122
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 188
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 119
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 129
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 66
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 71
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 152
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 112
  ]
]
