graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 6
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 9
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 4
    memory 4
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 99
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 67
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 63
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 145
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 71
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 92
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 137
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 186
  ]
]
