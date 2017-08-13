graph [
  node [
    id 0
    label 1
    disk 5
    cpu 1
    memory 4
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 7
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 10
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 15
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 3
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 184
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 81
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 176
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 152
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 58
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 75
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 125
  ]
]
