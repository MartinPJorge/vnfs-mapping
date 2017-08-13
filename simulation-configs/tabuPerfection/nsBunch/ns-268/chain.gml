graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 2
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 10
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
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
    bw 42
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 54
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 46
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 38
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 57
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 42
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 93
  ]
]
