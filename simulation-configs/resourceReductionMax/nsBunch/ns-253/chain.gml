graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 4
    memory 1
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 9
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 6
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 100
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 193
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 114
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 87
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 198
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 140
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 101
  ]
]
