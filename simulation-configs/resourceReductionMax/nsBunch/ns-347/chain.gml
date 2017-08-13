graph [
  node [
    id 0
    label 1
    disk 9
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 6
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 3
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 10
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 90
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 146
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 106
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 95
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 197
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 75
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 173
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 166
  ]
]
