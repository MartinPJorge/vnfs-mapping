graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 3
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 10
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 2
    memory 8
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 12
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 179
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 198
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 114
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 107
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 188
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 194
  ]
]
