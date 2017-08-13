graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 1
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 1
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 161
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 93
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 161
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 162
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 114
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 66
  ]
]
