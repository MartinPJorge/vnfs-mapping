graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 12
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 15
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 14
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
    delay 35
    bw 61
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 143
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 129
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 108
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 130
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 114
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 118
  ]
]
