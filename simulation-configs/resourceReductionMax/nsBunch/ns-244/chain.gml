graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 6
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 12
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 11
  ]
  node [
    id 5
    label 6
    disk 8
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
    delay 28
    bw 134
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 142
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 191
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 70
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 101
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 157
  ]
]
