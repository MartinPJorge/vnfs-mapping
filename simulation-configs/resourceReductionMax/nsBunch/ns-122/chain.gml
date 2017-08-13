graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 8
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
    disk 6
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 183
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 180
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 104
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 53
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 120
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 134
  ]
]
