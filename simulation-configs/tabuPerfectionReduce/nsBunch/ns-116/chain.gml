graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 13
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 5
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 8
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 3
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 137
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 53
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 183
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 181
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 88
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 122
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 162
  ]
]
