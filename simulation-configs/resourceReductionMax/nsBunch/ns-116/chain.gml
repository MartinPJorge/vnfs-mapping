graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 3
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 100
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 149
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 89
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 124
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 88
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 90
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 108
  ]
]
