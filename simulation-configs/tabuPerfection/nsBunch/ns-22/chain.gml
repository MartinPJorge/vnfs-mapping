graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 3
    memory 12
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 16
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 10
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 94
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 39
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 62
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 85
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 81
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 43
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 39
  ]
]
