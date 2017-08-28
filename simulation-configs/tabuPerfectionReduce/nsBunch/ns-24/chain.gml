graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 3
    memory 13
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 15
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 10
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 4
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 4
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 199
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 93
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 145
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 188
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 105
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 52
  ]
]
