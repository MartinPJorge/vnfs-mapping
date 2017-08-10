graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 16
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 11
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 5
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 13
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 134
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 131
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 159
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 71
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 86
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 147
  ]
]
