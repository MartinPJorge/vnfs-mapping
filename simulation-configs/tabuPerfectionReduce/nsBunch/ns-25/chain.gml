graph [
  node [
    id 0
    label 1
    disk 9
    cpu 1
    memory 4
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 10
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 4
    memory 11
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 7
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 102
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 119
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 148
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 132
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 150
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 165
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 169
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 156
  ]
]
