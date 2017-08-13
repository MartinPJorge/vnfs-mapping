graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 10
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 6
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 12
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 2
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 14
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 4
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 93
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 84
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 57
  ]
  edge [
    source 0
    target 3
    delay 31
    bw 44
  ]
  edge [
    source 1
    target 5
    delay 30
    bw 55
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 95
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 21
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 85
  ]
]
