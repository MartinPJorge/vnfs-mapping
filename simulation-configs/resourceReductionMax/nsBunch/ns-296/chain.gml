graph [
  node [
    id 0
    label 1
    disk 1
    cpu 1
    memory 5
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
    disk 3
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 11
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 1
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
    delay 30
    bw 108
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 172
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 57
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 187
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 97
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 182
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 103
  ]
]
