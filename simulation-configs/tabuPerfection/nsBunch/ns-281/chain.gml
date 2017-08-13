graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 13
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 3
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 13
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 3
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 31
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 49
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 62
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 95
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 76
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 59
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 58
  ]
]
