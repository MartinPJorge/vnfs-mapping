graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 9
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 13
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 4
    memory 11
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 13
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 3
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 21
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 42
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 88
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 93
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 60
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 94
  ]
]
