graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 11
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 11
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 4
    memory 6
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 15
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 181
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 151
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 117
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 76
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 191
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 84
  ]
]
