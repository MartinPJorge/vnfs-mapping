graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 3
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 9
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 15
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 149
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 90
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 117
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 59
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 122
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 112
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 65
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 92
  ]
]
