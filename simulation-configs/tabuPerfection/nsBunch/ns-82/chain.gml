graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 13
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 4
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 8
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 12
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 168
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 57
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 159
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 87
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 129
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 148
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 150
  ]
]