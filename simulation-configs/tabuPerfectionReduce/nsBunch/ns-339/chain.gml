graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 15
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 7
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 11
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 3
    memory 5
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 192
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 149
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 149
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 131
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 180
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 136
  ]
]
