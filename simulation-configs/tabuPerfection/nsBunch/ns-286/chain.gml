graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 13
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 13
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 12
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 5
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 3
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 3
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 83
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 69
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 45
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 59
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 27
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 58
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 76
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 95
  ]
]
