graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 8
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 9
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 1
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 2
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 1
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
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
    bw 199
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 193
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 162
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 78
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 175
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 106
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 71
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 176
  ]
]
