graph [
  node [
    id 0
    label 1
    disk 7
    cpu 3
    memory 2
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 4
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 16
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 10
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
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
    bw 45
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 52
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 53
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 95
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 99
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 34
  ]
]
