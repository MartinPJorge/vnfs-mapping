graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 15
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 8
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 12
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 3
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 6
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 61
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 97
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 108
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 138
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 94
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 137
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 112
  ]
]