graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 4
    memory 4
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 14
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 16
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 6
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 103
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 132
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 61
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 188
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 120
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 180
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 65
  ]
]
