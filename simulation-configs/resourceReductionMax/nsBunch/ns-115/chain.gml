graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 6
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 11
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 103
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 157
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 141
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 123
  ]
  edge [
    source 1
    target 5
    delay 30
    bw 178
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 146
  ]
]
