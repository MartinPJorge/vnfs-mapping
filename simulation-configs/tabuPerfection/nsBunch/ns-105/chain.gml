graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 1
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 4
    memory 7
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 3
    memory 13
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 5
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
    delay 35
    bw 56
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 58
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 84
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 146
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 187
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 113
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 103
  ]
]