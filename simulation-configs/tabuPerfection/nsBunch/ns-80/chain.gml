graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 9
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 135
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 151
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 80
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 175
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 88
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 133
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 97
  ]
]