graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 15
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 11
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 1
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 69
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 84
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 90
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 58
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 81
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 87
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 85
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 65
  ]
]
