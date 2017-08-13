graph [
  node [
    id 0
    label 1
    disk 5
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 1
    memory 1
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 10
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 6
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
    delay 26
    bw 101
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 105
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 175
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 127
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 176
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 117
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 184
  ]
]
