graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 3
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 14
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
    disk 1
    cpu 2
    memory 10
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 5
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
    delay 30
    bw 73
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 60
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 93
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 106
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 80
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 60
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 179
  ]
]
