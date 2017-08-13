graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 16
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 7
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 184
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 144
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 180
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 62
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 85
  ]
]
