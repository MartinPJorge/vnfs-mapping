graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 5
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 9
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 16
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 3
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 82
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 152
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 194
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 113
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 163
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 154
  ]
]
