graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 6
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 11
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 69
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 189
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 98
  ]
  edge [
    source 0
    target 3
    delay 30
    bw 74
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 178
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 165
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 142
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 77
  ]
]
