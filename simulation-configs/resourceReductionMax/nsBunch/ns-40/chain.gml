graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 11
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 9
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 1
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 89
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 157
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 112
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 110
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 53
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 67
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 166
  ]
]
