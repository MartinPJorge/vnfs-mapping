graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 4
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 1
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 14
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 99
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 191
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 113
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 193
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 88
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 182
  ]
]