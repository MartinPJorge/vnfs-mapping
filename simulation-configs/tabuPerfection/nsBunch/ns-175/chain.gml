graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 1
    memory 2
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 33
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 68
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 42
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 51
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 73
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 36
  ]
]
