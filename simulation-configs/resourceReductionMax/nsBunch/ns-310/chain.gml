graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 7
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 3
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 2
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 10
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 9
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 129
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 167
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 196
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 68
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 134
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 155
  ]
]
