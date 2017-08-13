graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 11
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 16
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 50
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 65
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 139
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 79
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 152
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 86
  ]
]
