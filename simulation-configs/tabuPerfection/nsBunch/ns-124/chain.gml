graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 16
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 6
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 42
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 94
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 31
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 93
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 67
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 29
  ]
]
