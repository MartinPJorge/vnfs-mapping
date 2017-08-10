graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 2
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 16
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 4
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 3
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 172
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 191
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 132
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 102
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 187
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 71
  ]
]
