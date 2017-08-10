graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 5
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 3
    memory 3
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 11
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 81
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 59
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 123
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 196
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 136
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 50
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 142
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 60
  ]
]