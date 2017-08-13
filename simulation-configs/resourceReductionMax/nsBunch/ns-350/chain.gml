graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 13
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 12
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 4
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 3
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 117
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 183
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 168
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 86
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 135
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 112
  ]
]
