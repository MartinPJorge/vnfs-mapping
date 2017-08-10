graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 16
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 3
    memory 16
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 8
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 109
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 142
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 186
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 176
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 193
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 76
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 162
  ]
]