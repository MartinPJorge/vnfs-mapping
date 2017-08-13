graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 8
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 12
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 3
    memory 11
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 115
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 107
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 71
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 170
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 154
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 200
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 57
  ]
]
