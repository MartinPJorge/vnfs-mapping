graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 16
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 6
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 9
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 16
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 3
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 143
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 133
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 124
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 106
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 87
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 149
  ]
]
