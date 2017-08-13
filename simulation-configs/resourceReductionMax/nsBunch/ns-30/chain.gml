graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 16
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 14
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 3
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 158
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 144
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 98
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 139
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 197
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 136
  ]
]
