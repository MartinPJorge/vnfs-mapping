graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 1
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 10
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 11
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
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
    bw 180
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 137
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 79
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 107
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 168
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 89
  ]
]
