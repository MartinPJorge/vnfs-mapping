graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 2
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 9
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 6
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 90
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 115
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 51
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 83
  ]
  edge [
    source 1
    target 5
    delay 28
    bw 73
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 56
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 186
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 117
  ]
]
