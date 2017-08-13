graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 4
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 3
    memory 4
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 8
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 1
    memory 9
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 12
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 3
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 120
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 140
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 122
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 109
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 86
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 183
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 83
  ]
]
