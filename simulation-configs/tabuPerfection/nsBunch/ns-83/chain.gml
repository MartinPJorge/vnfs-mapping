graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 11
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 12
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 8
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 2
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 10
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 118
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 72
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 80
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 108
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 137
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 150
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 50
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 56
  ]
]
